/* Deterministic pattern model. ES5: compatible with Max 8's classic js. */
var P8Names=['Kick','Snare','Hat','Metal','Membrane','Click','Grain','Bass'];
function p8clone(o){return JSON.parse(JSON.stringify(o));}
function p8clamp(x,a,b){return Math.max(a,Math.min(b,x));}
function p8rng(seed){var s=Math.floor(Math.abs(seed))%2147483646+1;return function(){s=(s*16807)%2147483647;return (s-1)/2147483646;};}
function p8part(i){var lengths=[7,11,13,9,5,17,8,7];var r=p8rng(781+i*337),shape=[],accent=[],color=[];for(var j=0;j<lengths[i];j++){shape.push(0.18+r()*1.75);accent.push(0.4+r()*0.6);color.push(r());}return {gain:[0.8,0.57,0.47,0.53,0.63,0.4,0.67,0.56][i],pan:[0,-.16,.4,-.35,.2,-.55,.5,0][i],tune:0,decay:1,color:.5,drive:.16,prob:1,length:lengths[i],rate:[.87,.78,1.5,.97,.71,1.8,1.04,.62][i],rotate:0,reverse:0,swing:0.14,mute:0,solo:0,shape:shape,accent:accent,lock:color};}
function p8factory(n){var titles=['Shards','Elastic Matter','Quiet Fractures','Wire Rain','Low Impacts','Broken Membrane','Swarm','Glass Dust','Bent Grid','Tidal Metal'];var settings=[[.52,.68,.71,.42,.72,.23],[.46,.9,.53,.67,.64,.28],[.19,.43,.36,.27,.81,.48],[.64,.71,.8,.76,.88,.31],[.38,.54,.32,.52,.49,.17],[.51,.81,.62,.39,.58,.26],[.83,.78,.91,.84,.87,.3],[.34,.57,.88,.28,.93,.42],[.6,.55,.38,.4,.62,.2],[.31,.88,.53,.72,.83,.62]];n=n%titles.length;var ps=[];for(var i=0;i<8;i++)ps.push(p8part(i));var s={version:1,name:titles[n],seed:731+n*1999,macros:settings[n].slice(),speed:1,duration:4,mode:n===8?1:0,bpm:120,anchor:0,evolve:1,parts:ps,mod:[],feedback:.38,delaytime:.19,output:-9,sample:'media/p8-source.wav',sampleframes:96000,samplesr:48000};for(i=0;i<8;i++)s.mod.push({source:(i+7)%8,target:i,amount:(i%2?.3:-.25),type:i%3});if(n===2){ps[0].gain=.57;ps[1].gain=.28;ps[5].gain=.28;}if(n===4){ps[0].gain=.95;ps[7].gain=.85;ps[2].gain=.18;}if(n===5){ps[4].gain=.95;ps[3].gain=.35;}if(n===7){ps[0].gain=.3;ps[7].gain=.3;ps[6].gain=.85;}if(n===9){ps[3].decay=2.4;ps[4].decay=1.7;ps[6].decay=1.8;}return s;}
function p8duration(s){return s.mode?4*s.duration*60/s.bpm:s.duration;}
function p8generate(s,serial,previous){var all=[],m=s.macros,duration=p8duration(s);for(var i=0;i<8;i++){var p=s.parts[i],r=p8rng(s.seed+i*104729+serial*8191),ev=[],t=.012+r()*.12,mem=.4,step=0,events=0;var c=s.mod[i]||{source:7,amount:0,type:0};var src=previous?previous[c.source]:null;var influence=src&&src.length?src.reduce(function(a,v){return a+v[1];},0)/Math.max(1,src.length)-.5:0;var coupling=influence*c.amount*m[3];if(m[0]<=0||p.prob<=0){all.push(ev);continue;}var base=[.42,.37,.19,.29,.46,.16,.32,.52][i]/p.rate;var gap=.003*s.speed/duration;var last=-1;
 while(t<duration&&events<1000&&step<2048){var k=((p.reverse?p.length-1-step%p.length:step%p.length)+p.rotate)%p.length;var shape=p.shape[k%p.shape.length]||1;var acc=p.accent[k%p.accent.length];if(acc===undefined)acc=.7;var color=p.lock[k%p.lock.length];if(color===undefined)color=.5;var rand=r();mem=.69*mem+.31*rand;var interval=base*shape*(.35+1.45*(1-m[0]))*(.55+mem*1.5);interval*=Math.exp((m[1]-.5)*1.6*Math.sin(step*1.37+i));if(c.type===0)interval*=1+coupling;var minInterval=Math.max(.014,duration/120);interval=Math.max(minInterval,interval);if(s.mode){var beat=60/s.bpm/4;interval=Math.max(Math.ceil(minInterval/beat)*beat,Math.round(interval/beat)*beat);t=Math.round(t/beat)*beat+(step%2?p.swing*beat:0);}
 var protectedHit=s.anchor&&step%p.length===0;var use=acc>0&&(protectedHit||(r()<p.prob&&r()<Math.min(1,.25+m[0]*1.25)));if(use){var cluster=r()<m[2]*.68?1+Math.floor(r()*Math.min(7,1+m[2]*8)):1;var spacing=(.005+Math.pow(r(),2)*.048)*(1.25-m[2]*.75);var v=p8clamp(acc*(.65+r()*.35)+(c.type===2?coupling:0),.03,1);var pitch=[.75,1,1.125,1.333,1.5,2][Math.floor(r()*6)];if(i===0||i===7)pitch=[.75,1,1,1.125,1.5][Math.floor(r()*5)];for(var j=0;j<cluster;j++){var tt=(t+j*spacing*Math.pow(1.15,j))/duration;if(tt>=1)break;if(tt-last<gap)tt=last+gap;if(tt>=1)break;var tone=p8clamp(color*.4+m[4]*.6+(c.type===1?coupling:0),0,1);ev.push([tt,v*Math.pow(.78,j),pitch*(1+j*.009),.5+r()*1.15,tone]);last=tt;events++;}}
 t+=interval;step++;
 }
 all.push(ev);
}return all;}
function p8validate(s){
 function num(v,a,b,label,integer){if(typeof v!=='number'||!isFinite(v)||v<a||v>b||(integer&&v!==Math.floor(v)))throw new Error('Invalid '+label);}
 if(!s||s.version!==1||!s.parts||s.parts.length!==8||!s.macros||s.macros.length!==6||!s.mod||s.mod.length!==8)throw new Error('PHASE8 scene format mismatch');
 if(typeof s.name!=='string'||s.name.length>120)throw new Error('Invalid scene name');
 for(var i=0;i<6;i++)num(s.macros[i],0,1,'macro');
 num(s.seed,1,2000000000,'seed',true);num(s.speed,.25,4,'speed');num(s.bpm,20,300,'bpm');num(s.mode,0,1,'mode',true);
 if([2,4,8,16].indexOf(s.duration)<0)throw new Error('Invalid window');
 num(s.anchor,0,1,'anchor',true);num(s.evolve,0,1,'evolve',true);num(s.feedback,0,.76,'feedback');num(s.delaytime,.013,1.7,'delay');num(s.output,-60,0,'output');
 for(i=0;i<8;i++){
  var p=s.parts[i];if(!p)throw new Error('Invalid voice');
  num(p.length,1,64,'length',true);num(p.gain,0,1.3,'gain');num(p.pan,-1,1,'pan');num(p.tune,-24,24,'tune');num(p.decay,.15,4,'decay');num(p.color,0,1,'color');num(p.drive,0,1,'drive');num(p.prob,0,1,'probability');num(p.rate,.25,4,'rate');num(p.rotate,0,63,'rotate',true);num(p.reverse,0,1,'reverse',true);num(p.swing,0,.8,'swing');num(p.mute,0,1,'mute',true);num(p.solo,0,1,'solo',true);
  var names=['shape','accent','lock'];for(var j=0;j<3;j++){var ar=p[names[j]];if(!ar||ar.length<p.length||ar.length>64)throw new Error('Invalid pattern length');for(var k=0;k<ar.length;k++)num(ar[k],j===0?.08:0,j===0?3:1,names[j]);}
  var m=s.mod[i];if(!m)throw new Error('Invalid modulation');num(m.source,0,7,'mod source',true);num(m.type,0,2,'mod type',true);num(m.amount,-1,1,'mod amount');
 }
 return s;
}
function p8validateEvents(data){if(!data||data.length!==8)throw new Error('Invalid frozen events');for(var i=0;i<8;i++){if(!data[i]||data[i].length>1024)throw new Error('Invalid event count');var previous=-1;for(var j=0;j<data[i].length;j++){var e=data[i][j];if(!e||e.length!==5)throw new Error('Invalid event');for(var k=0;k<5;k++)if(typeof e[k]!=='number'||!isFinite(e[k]))throw new Error('Invalid event value');if(e[0]<previous||e[0]<0||e[0]>=1||e[1]<0||e[1]>1||e[2]<=0||e[2]>16||e[3]<=0||e[3]>8||e[4]<0||e[4]>1)throw new Error('Invalid event range');previous=e[0];}}return data;}
if(typeof module!=='undefined')module.exports={factory:p8factory,generate:p8generate,clone:p8clone,validate:p8validate,duration:p8duration};
