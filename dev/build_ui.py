import json,pathlib
ROOT=pathlib.Path(__file__).resolve().parents[1]
APP={'major':8,'minor':6,'revision':5,'architecture':'x64','modernui':1}
BG=[.065,.08,.08,1];FG=[.86,.9,.86,1];MUT=[.5,.59,.54,1];PANEL=[.11,.14,.13,1];ACC=[.65,.83,.68,1]
class Patch:
 def __init__(self,w=1250,h=815):self.boxes=[];self.lines=[];self.n=0;self.w=w;self.h=h
 def box(self,cl,x,y,w=100,h=22,**kw):
  self.n+=1;bid=kw.pop('id','o'+str(self.n));b={'id':bid,'maxclass':cl,'patching_rect':[x,y,w,h]};b.update(kw);self.boxes.append({'box':b});return bid
 def obj(self,text,x=30,y=900,w=200,**kw):return self.box('newobj',x,y,w,22,text=text,**kw)
 def link(self,a,out,b,ins=0):self.lines.append({'patchline':{'source':[a,out],'destination':[b,ins]}})
 def shown(self,cl,name,x,y,w,h,**kw):
  return self.box(cl,x,y,w,h,varname=name,presentation=1,presentation_rect=[x,y,w,h],**kw)
 def label(self,text,x,y,w=200,h=20,size=12,color=None,name=None):
  return self.shown('comment',name or 'label'+str(self.n),x,y,w,h,text=text,fontsize=size,fontname='Arial',textcolor=color or FG)
 def data(self,pres=1):return {'patcher':{'fileversion':1,'appversion':APP,'classnamespace':'box','rect':[40,50,self.w,self.h],'default_fontsize':12,'default_fontname':'Arial','bgcolor':BG,'editing_bgcolor':[.2,.23,.22,1],'openinpresentation':pres,'bglocked':1,'toolbarvisible':0,'statusbarvisible':0,'boxes':self.boxes,'lines':self.lines}}
 def save(self,name,pres=1): (ROOT/name).write_text(json.dumps(self.data(pres),indent=2))
p=Patch();inp=p.obj('in 1',30,20);route=p.obj('route clock v1 v2 v3 v4 v5 v6 v7 v8 fx clear',30,55,610);p.link(inp,0,route)
clock=p.obj('gen~ p8_clock',30,100,170);p.link(route,0,clock)
L=p.obj('+~',250,480);R=p.obj('+~',480,480);voices=[]
for i in range(8):
 v=p.obj('gen~ p8_voice'+str(i+1),30+i*135,200,125);voices.append(v);p.link(route,i+1,v)
 for j in range(3):p.link(clock,j,v,j)
 p.link(v,0,L,0);p.link(v,1,R,0)
fx=p.obj('gen~ p8_space',650,480);p.link(route,9,fx);p.link(L,0,fx,0);p.link(R,0,fx,1)
for j,o in enumerate([L,R]):
 mix=p.obj('+~',250+j*230,550);p.link(o,0,mix,0);p.link(fx,j,mix,1)
 out=p.obj('out~ '+str(j+1),250+j*230,600);p.link(mix,0,out)
for j in range(2):
 out=p.obj('out~ '+str(j+3),760+j*150,600);p.link(clock,j+3,out)
clear=p.box('message',850,100,60,22,text='reset');p.link(route,10,clear)
for v in [clock,fx]+voices:p.link(clear,0,v)
p.save('p8_engine.maxpat',0)
p=Patch(1250,820)
js=p.obj('js p8_control.js #0',50,900,250,varname='controller')
engine=p.obj('poly~ p8_engine 1 @up 2 @resampling 1',50,1100,400,varname='engine')
table=p.obj('buffer~ #0-events 1000 5',50,1040,250,varname='event_buffer')
sample=p.obj('buffer~ #0-sample',350,1040,200,varname='sample_buffer')
msg=p.box('message',350,1070,100,22,text='sampledone');p.link(sample,1,msg);p.link(msg,0,js)
init=p.obj('loadbang',50,950);delay=p.obj('delay 200',50,980);m=p.box('message',160,980,50,22,text='init');p.link(init,0,delay);p.link(delay,0,m);p.link(m,0,js)
# Native display, controls and a compact selected-part editor.
p.label('PHASE / 8',24,15,280,42,28)
p.label('FREE-TIME PERCUSSION SYSTEM',310,29,410,25,12,MUT)
p.label('Shards',950,24,270,28,18,ACC,'scene_title')
def command(src,selector,outlet=0):
 o=p.obj('prepend '+selector,40+(p.n%6)*190,1450+(p.n//6)*25,180);p.link(src,outlet,o);p.link(o,0,js)
def button(name,text,x,y,w=75,toggle=False,selector=None):
 b=p.shown('textbutton',name,x,y,w,27,text=text,texton=text,mode=1 if toggle else 0,outputmode=1,legacytextcolor=1,fontsize=11,fontname='Arial',bgcolor=PANEL,bgoncolor=ACC,textcolor=FG,textoncolor=[.06,.12,.08,1] if toggle else FG,rounded=4)
 command(b,selector or name);return b
def number(name,label,x,y,width=72,lo=0,hi=1,integer=False,selector=None):
 p.label(label,x,y,width+6,16,10,MUT)
 b=p.shown('number' if integer else 'flonum',name,x,y+19,width,23,minimum=lo,maximum=hi,fontsize=12,bgcolor=PANEL,textcolor=FG,triangle=0)
 command(b,selector or name);return b
def menu(name,label,items,x,y,w=125,selector=None):
 p.label(label,x,y,w,16,10,MUT)
 arr=[]
 for i,s in enumerate(items):
  if i:arr.append(',')
  arr.append(s)
 b=p.shown('umenu',name,x,y+19,w,23,items=arr,fontsize=11,bgcolor=PANEL,textcolor=FG);command(b,selector or name);return b
button('audio','AUDIO',24,76,68,True)
button('play','PLAY',101,76,68,True)
button('reset','RESET',178,76,68)
menu('mode','TIME',['Free Time','Grid'],267,57,100)
number('speed','SPEED',380,57,62,.25,4)
number('bpm','BPM / GRID',455,57,62,20,300)
menu('duration','WINDOW / BARS',['2','4','8','16'],530,57,80)
menu('scene','SCENE',['01 Shards','02 Elastic Matter','03 Quiet Fractures','04 Wire Rain','05 Low Impacts','06 Broken Membrane','07 Swarm','08 Glass Dust','09 Bent Grid','10 Tidal Metal'],625,57,160)
button('save','SAVE',800,76,67);button('load','LOAD',874,76,67)
button('recordfile','REC FILE',954,76,79);button('record','REC',1041,76,63,True);button('panic','PANIC',1120,76,104)
# Remove direct command connections for dialog launch buttons below.
for name,typ,dest in [('save','savedialog JSON','saved'),('load','opendialog JSON','loadedfile'),('recordfile','savedialog WAVE','recordfile')]:
 bid=next(b['box']['id'] for b in p.boxes if b['box'].get('varname')==name)
 p.lines=[l for l in p.lines if l['patchline']['source'][0]!=bid]
 d=p.obj(typ,700,p.n*10+900);p.link(bid,0,d);command(d,dest)
for i,(name,title,caption) in enumerate([('density','DENSITY','events / silence'),('warp','TIME WARP','compress / stretch'),('fragment','FRAGMENT','clusters / shards'),('coupling','COUPLING','voices influence voices'),('material','MATERIAL','membrane / metal'),('space','SPACE','echo / resonance')]):
 x=24+i*201
 p.label(title,x,123,185,22,13,ACC)
 dial=p.shown('dial',name,x,151,62,62,size=101,floatoutput=1,needlecolor=ACC,outlinecolor=[.22,.3,.26,1],bgcolor=BG)
 command(dial,'macro '+str(i))
 val=p.shown('flonum','read_'+name,x+76,155,85,24,minimum=0,maximum=100,bgcolor=PANEL,textcolor=FG,triangle=0)
 p.link(val,0,dial)
 p.label(caption,x+76,186,122,24,10,MUT)
p.label('EVENT FIELD     /     SELECT A VOICE TO EDIT',24,228,790,19,10,MUT)
p.label('MUTE     SOLO            LEVEL',958,228,245,19,10,MUT)
view=p.shown('jsui','events',24,252,910,258,filename='p8_display.js',numinlets=1,numoutlets=1,outlettype=['']);p.link(view,0,js)
for i in range(8):
 y=252+i*29.5
 button('mute'+str(i),'M',955,y,34,True,'mute '+str(i));button('solo'+str(i),'S',997,y,34,True,'solo '+str(i))
 sl=p.shown('slider','level'+str(i),1043,y+3,169,20,size=131,floatoutput=1,orientation=1,bgcolor=PANEL,knobcolor=ACC);command(sl,'level '+str(i))
menu('selected','VOICE', ['01 Kick','02 Snare','03 Hat','04 Metal','05 Membrane','06 Click','07 Grain','08 Bass'],24,522,133,'select')
for name,label,x,lo,hi,integer in [('tune','TUNE / ST',177,-24,24,False),('decay','DECAY',263,.15,4,False),('color','COLOR',349,0,1,False),('pan','PAN',435,-1,1,False),('drive','DRIVE',521,0,1,False),('prob','PROBABILITY',607,0,1,False),('length','EVENTS',711,1,64,True),('rate','RATE',797,.25,4,False),('rotate','ROTATE',883,0,63,True),('swing','SWING / GRID',969,0,.8,False)]:number('edit_'+name,label,x,522,70,lo,hi,integer,'part '+name)
button('edit_reverse','REVERSE',1070,541,90,True,'part reverse')
button('euclid','EUCLID',1168,541,56)
# Manual shape editors, three rows: interval / accent / tone lock.
for n,label,lo,hi,y in [('shape','INTERVAL',.08,3,579),('accent','ACCENT',0,1,622),('lock','TONE LOCK',0,1,665)]:
 p.label(label,24,y+10,110,20,10,MUT)
 ms=p.shown('multislider',n,137,y,697,35,size=7,setminmax=[lo,hi],setstyle=1,settype=1,slidercolor=ACC,bgcolor=PANEL,spacing=2,contdata=1)
 command(ms,'pattern '+n)
menu('modsource','MOD SOURCE',['Kick','Snare','Hat','Metal','Membrane','Click','Grain','Bass'],863,581,133,'mod source')
menu('modtype','MOD TARGET',['Interval','Timbre','Accent'],1007,581,133,'mod type')
number('modamount','MOD AMOUNT',1151,581,73,-1,1,False,'mod amount')
button('sample','LOAD SAMPLE',863,642,122);button('internalsample','INTERNAL',997,642,94)
src=next(b['box']['id'] for b in p.boxes if b['box'].get('varname')=='sample');p.lines=[l for l in p.lines if l['patchline']['source'][0]!=src];dlg=p.obj('opendialog',940,1500);p.link(src,0,dlg);command(dlg,'sample')
number('feedback','FEEDBACK %',863,672,88,0,76)
number('delaytime','DELAY / MS',970,672,88,13,1700)
menu('quality','DSP QUALITY',['1x','2x','4x'],1080,672,140)
button('freeze','FREEZE',24,733,81,True);button('anchor','ANCHOR',114,733,81,True);button('evolve','EVOLVE',204,733,81,True)
button('mutate','MUTATE',294,733,81);button('undo','UNDO',384,733,72)
number('seed','SEED',475,714,116,1,2000000000,True)
button('capA','CAP A',610,733,64,False,'capture 0');button('capB','CAP B',681,733,64,False,'capture 1')
p.label('A   MORPH   B',758,714,176,17,10,MUT)
mo=p.shown('slider','morph',758,737,176,17,size=101,floatoutput=1,orientation=1,bgcolor=PANEL,knobcolor=ACC);command(mo,'morph')
number('master','OUTPUT / DB',955,723,82,-60,0)
p.label('REC OFF',1050,742,140,18,10,MUT,'record_status')
p.label('Ready',24,784,980,21,12,MUT,'status')
# Audio I/O. Conservative startup volume. Linked lookahead limiter.
lim=p.obj('limi~ 2 @threshold -1.5 @lookahead 128 @release 90 @dcblock 1',50,1190,540,varname='limiter')
for i in range(2):p.link(engine,i,lim,i)
pk=p.obj('pack 0. 20',660,1190,140,varname='masterline');ln=p.obj('line~ 0.',660,1220);p.link(pk,0,ln)
dac=p.obj('dac~ 1 2',50,1350,130,varname='dspcontrol');rec=p.obj('sfrecord~ 2',280,1350,300,varname='recorder')
for i in range(2):
 mul=p.obj('*~',50+i*220,1270);p.link(lim,i,mul,0);p.link(ln,0,mul,1);p.link(mul,0,dac,i);p.link(mul,0,rec,i)
 meter=p.shown('meter~','meter'+str(i),1050,776+i*11,174,9,bgcolor=PANEL);p.link(mul,0,meter)
q=p.obj('qmetro 40',780,1190,140,varname='ui_clock')
for i,name in [(2,'position'),(3,'frame')]:
 snap=p.obj('snapshot~',780+(i-2)*160,1250,140);p.link(engine,i,snap);p.link(q,0,snap);command(snap,name)
# Audio settings and help are ordinary native operations from presentation.
helpbtn=button('help','?',1189,741,35)
p.save('PHASE8.maxpat')
proj={'name':'PHASE8','version':1,'autoorganize':0,'hideprojectwindow':1,'showdependencies':1,'autolocalize':0,'contents':{'patchers':{'PHASE8.maxpat':{'kind':'patcher','local':1,'toplevel':1},'p8_engine.maxpat':{'kind':'patcher','local':1}},'code':{},'media':{'media/p8-source.wav':{'kind':'audiofile','local':1}}},'layout':{},'searchpath':{},'detailsvisible':0}
for f in [ROOT/n for n in ['p8_control.js','p8_model.js','p8_display.js']]:proj['contents']['code'][f.name]={'kind':'javascript','local':1}
for f in ROOT.glob('*.gendsp'):proj['contents']['code'][f.name]={'kind':'gendsp','local':1}
(ROOT/'PHASE8.maxproj').write_text(json.dumps(proj,indent=2))
print('Built native Presentation UI:',len(p.boxes),'objects;',len(p.lines),'connections')
