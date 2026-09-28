autowatch=0;
inlets=1;outlets=1;
include('p8_model.js');
var state=p8factory(0), selected=0, history=[],banks=[null,null,null,null],serials=[0,1,2,3];
var current=0,previous=-1,queued=1,epoch=-1,phaseValue=0,playing=0,held=0,holdBank=0,resetId=0,loaded=0;
var snapA=null,snapB=null,recording=0,recordPath='',recordStart=0,sourcePath='',freezeData=null;
var prefix=String(jsarguments[1]),table=null,source=null;
var engine=null,display=null;
var sceneNames=[];for(var sceneIndex=0;sceneIndex<10;sceneIndex++)sceneNames.push(p8factory(sceneIndex).name);
var folder=this.patcher.filepath.replace(/[^\/]*$/,'');
var pendingTasks=[],qualityIndex=1,lastStatus='',lastFrame=0,editKey='',editTime=0;
function ui(n){var a=arrayfromargs(arguments),o=this.patcher.getnamed(a.shift());if(o)o.message.apply(o,[].concat.apply([],a));}
function msg(){engine.message.apply(engine,arrayfromargs(arguments));}
function status(t){lastStatus=String(t);ui('status','set',lastStatus);}
function clamp(v,a,b){return p8clamp(Number(v),a,b);}
function deferTask(fn,ms){var t=new Task(function(){try{fn.call(this);}finally{var k=pendingTasks.indexOf(t);if(k>=0)pendingTasks.splice(k,1);}},this);pendingTasks.push(t);t.schedule(ms);return t;}
function writebank(b,data,serial){var channels=[[],[],[],[],[]];for(var i=0;i<8;i++){var ev=data[i]||[];for(var k=0;k<1024;k++){var e=ev[k]||[2,0,1,1,.5];for(var ch=0;ch<5;ch++)channels[ch].push(e[ch]);}}for(ch=0;ch<5;ch++)table.poke(ch+1,b*8192,channels[ch]);banks[b]=p8clone(data);serials[b]=serial;}
function spare(){for(var b=0;b<4;b++)if(b!==current&&b!==previous&&b!==queued)return b;for(b=0;b<4;b++)if(b!==current&&b!==queued)return b;return (current+2)%4;}
function prepare(){if(!loaded||held)return;var b=spare();var n=playing&&state.evolve?(serials[current]||0)+1:0;var data=p8generate(state,n,playing&&state.evolve?banks[current]:null);writebank(b,data,n);queued=b;msg('clock','duration',p8duration(state));msg('clock','ready',queued);status(playing?'Change queued / applies at next phrase':'Ready / press PLAY');if(!playing)showevents(b);}
var prepareTask=new Task(prepare,this);
function request(){prepareTask.cancel();prepareTask.schedule(55);}
function showevents(b){var d=banks[b]||banks[0];if(!d)return;display.message('clear');for(var i=0;i<8;i++){var a=['lane',i];for(var j=0;j<d[i].length;j++)a.push(d[i][j][0],d[i][j][1]);display.message.apply(display,a);}display.message('bang');}
function remember(key){var now=Date.now();if(key!==editKey||now-editTime>600)push();editKey=key;editTime=now;}
function push(){history.push(p8clone(state));if(history.length>32)history.shift();}
function partaudio(){var any=false;for(var i=0;i<8;i++)if(state.parts[i].solo)any=true;for(i=0;i<8;i++){var p=state.parts[i],n='v'+(i+1);msg(n,'gain',p.mute||(any&&!p.solo)?0:p.gain);msg(n,'pan',p.pan);msg(n,'tune',p.tune);msg(n,'decay',p.decay);msg(n,'color',p.color);msg(n,'drive',p.drive);msg(n,'material',state.macros[4]);ui('mute'+i,'set',p.mute);ui('solo'+i,'set',p.solo);ui('level'+i,'set',p.gain*100);}}
function sync(){var presetIndex=sceneNames.indexOf(state.name);if(presetIndex>=0)ui('scene','set',presetIndex);var names=['density','warp','fragment','coupling','material','space'];for(var i=0;i<6;i++){ui(names[i],'set',state.macros[i]*100);ui('read_'+names[i],'set',state.macros[i]*100);}ui('speed','set',state.speed);ui('bpm','set',state.bpm);ui('seed','set',state.seed);ui('mode','set',state.mode);ui('duration','set',[2,4,8,16].indexOf(state.duration));ui('anchor','set',state.anchor);ui('evolve','set',state.evolve);ui('master','set',state.output);ui('feedback','set',state.feedback*100);ui('delaytime','set',state.delaytime*1000);ui('scene_title','set',state.name);partaudio();details();msg('clock','speed',state.speed);msg('clock','duration',p8duration(state));msg('fx','space',state.macros[5]);msg('fx','feedback',state.feedback);msg('fx','delaytime',state.delaytime);ui('masterline','float',Math.pow(10,state.output/20));}
function details(){var p=state.parts[selected];ui('selected','set',selected);display.message('select',selected);var fields=['tune','decay','color','pan','drive','prob','length','rate','rotate','reverse','swing'];for(var i=0;i<fields.length;i++)ui('edit_'+fields[i],'set',p[fields[i]]);ui('shape','size',p.length);ui('shape','setlist',p.shape.slice(0,p.length));ui('accent','size',p.length);ui('accent','setlist',p.accent.slice(0,p.length));ui('lock','size',p.length);ui('lock','setlist',p.lock.slice(0,p.length));var m=state.mod[selected];ui('modsource','set',m.source);ui('modtype','set',m.type);ui('modamount','set',m.amount);}
function init(){if(loaded)return;engine=this.patcher.getnamed('engine');display=this.patcher.getnamed('events');msg('clock','reload');for(var ri=1;ri<=8;ri++)msg('v'+ri,'reload');msg('fx','reload');table=new Buffer(prefix+'-events');source=new Buffer(prefix+'-sample');folder=this.patcher.filepath.replace(/[^\/]*$/,'');table.send('sizeinsamps',32768);sourcePath=folder+'media/p8-source.wav';source.send('read',sourcePath,0,-1,0);bindbuffers();loaded=1;reset();sync();ui('quality','set',1);ui('ui_clock',1);status('Ready / AUDIO ON → PLAY');post('PHASE8 initialized. Four-bank signal sequencer, 32 synthesis slots.\n');}
function bindbuffers(){for(var i=1;i<=8;i++){msg('v'+i,'events',prefix+'-events');msg('v'+i,'samplebuf',prefix+'-sample');}sampledone();}
function play(v){v=Number(v)>0?1:0;if(v&&!playing){master(state.output);ui('dspcontrol',1);ui('audio','set',1);reset();}playing=v;msg('clock','running',v);ui('play','set',v);status(v?'Playing / '+state.name:'Stopped / tails remain');}
function audio(v){ui('dspcontrol',Number(v));if(!Number(v))play(0);}
function reset(){prepareTask.cancel();var resume=playing;msg('clock','running',0);current=0;previous=-1;queued=1;epoch=-1;var data=held&&freezeData?freezeData:p8generate(state,0,null);writebank(0,data,0);writebank(1,held?data:p8generate(state,state.evolve?1:0,state.evolve?data:null),1);writebank(2,data,0);writebank(3,data,0);holdBank=0;msg('clock','holdbank',0);msg('clock','ready',1);msg('clock','duration',p8duration(state));msg('clock','restart',++resetId);msg('clock','hold',held);msg('clock','running',resume);showevents(0);}
function frame(code){lastFrame=code;if(!loaded)return;var c=Math.round(code),b=c%8,e=Math.floor(c/8);if(Math.abs(code-c)>.005||b<0||b>3||e<epoch)return;if(e!==epoch){if(epoch>=0)previous=current;current=b;epoch=e;showevents(current);if(!held&&playing)prepare();}if(recording)ui('record_status','set','REC '+Math.floor((Date.now()-recordStart)/1000)+' s');}
function position(v){phaseValue=v;display.message('position',v);}
function macro(i,v){remember('macro'+i+'');i=Number(i);state.macros[i]=clamp(v/100,0,1);ui('read_'+['density','warp','fragment','coupling','material','space'][i],'set',v);if(i===4)partaudio();if(i===5)msg('fx','space',state.macros[5]);else request();}
function speed(v){remember('speed');state.speed=clamp(v,.25,4);msg('clock','speed',state.speed);request();}
function bpm(v){remember('bpm');state.bpm=clamp(v,20,300);request();}
function mode(v){push();state.mode=Number(v)?1:0;request();}
function duration(v){remember('duration');state.duration=[2,4,8,16][clamp(v,0,3)];request();}
function seed(v){push();state.seed=Math.floor(clamp(v,1,2000000000));request();}
function anchor(v){remember('anchor');state.anchor=Number(v)?1:0;request();}
function evolve(v){remember('evolve');state.evolve=Number(v)?1:0;request();}
function mutate(){push();state.seed=(state.seed+104729-1)%2000000000+1;ui('seed','set',state.seed);request();status('Mutated / UNDO to restore');}
function undo(){if(history.length){state=history.pop();sync();request();status('Undo / previous settings restored');}}
function freeze(v){held=Number(v)?1:0;if(held){holdBank=previous>=0?previous:current;freezeData=p8clone(banks[holdBank]);msg('clock','holdbank',holdBank);msg('clock','hold',1);status('Freeze / repeats last completed phrase at next boundary');}else{msg('clock','hold',0);freezeData=null;request();}display.message('freeze',held);ui('freeze','set',held);}
function scene(n){push();state=p8factory(Math.floor(clamp(n,0,9)));held=0;freezeData=null;msg('clock','hold',0);ui('freeze','set',0);display.message('freeze',0);sync();request();status(state.name+' / applies at next phrase');}
function euclid(){push();var p=state.parts[selected],hits=Math.max(1,Math.round(p.length*state.macros[0]));for(var k=0;k<p.length;k++){p.shape[k]=1;p.accent[k]=((k*hits)%p.length)<hits?.85:0;}details();request();status('Euclidean accents / '+hits+' of '+p.length);}
function select(v){selected=Math.floor(clamp(v,0,7));details();}
function part(key,v){remember('part'+selected+key+'');var p=state.parts[selected];if(key==='length'){v=Math.floor(clamp(v,1,64));var arrays=[p.shape,p.accent,p.lock],defaults=[1,.7,.5];for(var a=0;a<3;a++)while(arrays[a].length<v)arrays[a].push(defaults[a]);p.length=v;}else p[key]=Number(v);partaudio();if(key==='length')details();request();}
function pattern(){var a=arrayfromargs(arguments),key=a.shift();remember('pattern'+selected+key);var values=state.parts[selected][key];for(var j=0;j<a.length&&j<64;j++)values[j]=a[j];request();}
function mute(i,v){remember('mute'+i+'');state.parts[i].mute=Number(v);partaudio();}
function solo(i,v){remember('solo'+i+'');state.parts[i].solo=Number(v);partaudio();}
function level(i,v){remember('level'+i+'');state.parts[i].gain=clamp(v/100,0,1.3);partaudio();}
function mod(key,v){remember('mod'+selected+key+'');state.mod[selected][key]=Number(v);request();}
function capture(which){if(Number(which)===0)snapA=p8clone(state);else snapB=p8clone(state);status('Captured '+(Number(which)===0?'A':'B'));}
function morph(v){if(!snapA||!snapB){status('Capture two states with CAP A and CAP B first');return;}var t=clamp(v/100,0,1);var s=p8clone(t<.5?snapA:snapB);for(var i=0;i<6;i++)s.macros[i]=snapA.macros[i]*(1-t)+snapB.macros[i]*t;var fields=['gain','pan','tune','decay','color','drive','prob','rate','swing'];for(i=0;i<8;i++)for(var j=0;j<fields.length;j++){var k=fields[j];s.parts[i][k]=snapA.parts[i][k]*(1-t)+snapB.parts[i][k]*t;}s.speed=snapA.speed*(1-t)+snapB.speed*t;s.name='Morph '+Math.round(t*100)+'%';state=s;sync();request();}
function master(v){state.output=clamp(v,-60,0);ui('masterline','float',Math.pow(10,state.output/20));}
function feedback(v){remember('feedback');state.feedback=clamp(v/100,0,.76);msg('fx','feedback',state.feedback);}
function delaytime(v){remember('delaytime');state.delaytime=clamp(v/1000,.013,1.7);msg('fx','delaytime',state.delaytime);}
function panic(){play(0);record(0);ui('masterline','float',0);deferTask(function(){msg('clear');ui('limiter','clear');bindbuffers();sync();ui('masterline','float',0);},40);status('PANIC / stopped and cleared; press PLAY to resume');}
// Preserve original sample bytes, including float PCM and stereo metadata.
function normalizedPath(path){return String(path).replace(/^[^\/]{2,}:(?=\/)/,'');}
function copyfile(from,to){if(normalizedPath(from)===normalizedPath(to))return;var input=new File(from,'read');if(!input.isopen)throw new Error('Sample source unavailable');var output=new File(to,'write');if(!output.isopen){input.close();throw new Error('Cannot copy sample');}try{output.eof=0;while(input.position<input.eof){var bytes=input.readbytes(Math.min(8192,input.eof-input.position));if(!bytes.length)throw new Error('Sample copy interrupted');output.writebytes(bytes);}}finally{input.close();output.close();}}
function saved(path){try{var data={format:'PHASE8',version:1,state:state,held:held,freezeData:freezeData,A:snapA,B:snapB,samplePath:sourcePath};if(sourcePath!==folder+'media/p8-source.wav'){var ext=sourcePath.match(/\.[^\/.]+$/);var companion=String(path).replace(/\.[^.\/]+$/,'')+'-sample'+(ext?ext[0]:'.wav');copyfile(sourcePath,companion);data.samplePath=companion.replace(/.*[\/]/,'');}else data.samplePath='media/p8-source.wav';var f=new File(path,'write','TEXT');if(!f.isopen)throw new Error('Cannot open');f.eof=0;var json=JSON.stringify(data,null,2).replace(/[\u0080-\uFFFF]/g,function(c){return '\\u'+('0000'+c.charCodeAt(0).toString(16)).slice(-4);});for(var offset=0;offset<json.length;offset+=4096)f.writestring(json.substring(offset,offset+4096));f.close();status('Saved / '+path);}catch(e){status('Save error / '+e);}}
function loadedfile(path){try{var f=new File(path,'read');if(!f.isopen)throw new Error('Cannot open');var text="";while(f.position<f.eof){var chunk=f.readstring(Math.min(4096,f.eof-f.position));if(!chunk)break;text+=chunk;}f.close();var d=JSON.parse(text);if(d.format!=='PHASE8')throw new Error('Invalid file');p8validate(d.state);if(d.A)p8validate(d.A);if(d.B)p8validate(d.B);if(d.held)p8validateEvents(d.freezeData);push();state=d.state;snapA=d.A||null;snapB=d.B||null;held=d.held?1:0;freezeData=d.freezeData||null;if(d.samplePath)sample(d.samplePath==='media/p8-source.wav'?folder+d.samplePath:((String(d.samplePath).charAt(0)==='/'||String(d.samplePath).indexOf(':/')>0)?d.samplePath:String(path).replace(/[^\/]*$/,'')+d.samplePath));sync();reset();ui('freeze','set',held);display.message('freeze',held);status('Loaded / '+state.name);}catch(e){status('Load error / '+e);}}
function sample(path){sourcePath=String(path);source.send('read',sourcePath,0,-1,0);deferTask(sampledone,150);status('Sample / '+sourcePath);}
function sampledone(){if(!engine||!source)return;var n=source.framecount();if(n>0){state.sampleframes=n;state.samplesr=n/Math.max(1,source.length())*1000;msg('v7','sampleframes',n);msg('v7','samplesr',state.samplesr);}}
function internalsample(){sample(folder+'media/p8-source.wav');}
function recordfile(path){recordPath=String(path);status('Recording file ready / press REC to start');}
var recordTask=new Task(function(){if(!recording)return;ui('recorder','samptype','float32');ui('recorder','open',recordPath);ui('recorder',1);recordStart=Date.now();},this);
function record(v){recordTask.cancel();if(Number(v)&&!recordPath){ui('record','set',0);status('Choose a WAV destination with REC FILE first');return;}recording=Number(v)?1:0;if(recording){ui('dspcontrol',1);ui('audio','set',1);recordStart=Date.now();recordTask.schedule(180);}else{ui('recorder',0);recordPath='';}ui('record','set',recording);ui('record_status','set',recording?'REC preparing':'Record stopped');}
function quality(v){if(playing||recording){ui('quality','set',qualityIndex);status('Stop playback and recording before changing quality');return;}qualityIndex=Math.floor(clamp(v,0,2));msg('up',[1,2,4][qualityIndex]);ui('dspcontrol',0);deferTask(function(){ui('dspcontrol',1);master(state.output);},100);status('DSP multiplier changed / 1x, 2x, 4x');}
function help(){status('PLAY to start / macros to transform / FREEZE to loop / SAVE / REC FILE then REC');}
function anything(){post('PHASE8 unknown message: '+messagename+'\n');}

// A small read-only outlet makes automated native-Max verification possible.
function eventHash(data){var t=JSON.stringify(data),h=0;for(var i=0;i<t.length;i++){h=((h<<5)-h)+t.charCodeAt(i);h=h|0;}return h;}
function report(){outlet(0,'report',JSON.stringify({state:state,playing:playing,held:held,phase:phaseValue,code:lastFrame,bank:current,epoch:epoch,serial:serials[current],eventHash:eventHash(banks[current]),frozenHash:eventHash(freezeData),sourcePath:sourcePath,events:(banks[current]||[]).map(function(a){return a.length;}),sampleframes:source?source.framecount():0,status:lastStatus,quality:qualityIndex}));}
// Also initializes after a manual JS reload; normal loadbang is idempotent.
var bootTask=new Task(init,this);bootTask.schedule(600);
