import json, math, pathlib, wave, struct
ROOT=pathlib.Path(__file__).resolve().parents[1]
ROOT.mkdir(exist_ok=True)
(ROOT/'media').mkdir(exist_ok=True)
VERSION={'major':8,'minor':6,'revision':5,'architecture':'x64','modernui':1}
def writegen(name,code,ins,outs):
 boxes=[{'box':{'id':'code','maxclass':'codebox','numinlets':ins,'numoutlets':outs,'code':code,'patching_rect':[60,60,920,660]}}]
 lines=[]
 for i in range(ins):
  boxes.append({'box':{'id':f'i{i}','maxclass':'newobj','text':f'in {i+1}','patching_rect':[60+i*90,15,55,22]}});lines.append({'patchline':{'source':[f'i{i}',0],'destination':['code',i]}})
 for i in range(outs):
  boxes.append({'box':{'id':f'o{i}','maxclass':'newobj','text':f'out {i+1}','patching_rect':[60+i*90,755,55,22]}});lines.append({'patchline':{'source':['code',i],'destination':[f'o{i}',0]}})
 d={'patcher':{'fileversion':1,'appversion':VERSION,'classnamespace':'dsp.gen','rect':[60,60,1020,840],'boxes':boxes,'lines':lines}}
 (ROOT/(name+'.gendsp')).write_text(json.dumps(d,indent=2))
 (ROOT/(name+'.genexpr')).write_text(code)
clock='''// Audio-rate phrase clock; UI never schedules individual notes.
Param running(0); Param speed(1); Param duration(4); Param ready(1);
Param hold(0); Param holdbank(0); Param restart(0);
History phase(0); History bank(0); History epoch(0); History oldreset(-1); History span(4);
History smoothspeed(1);
smoothspeed = smoothspeed + (clamp(speed,0.25,4)-smoothspeed)*min(1,100/samplerate);
p = phase; b=bank; cycleCount=epoch; dur=span;
if (restart != oldreset) { p=0; b=0; cycleCount=cycleCount+1; dur=max(0.25,duration); }
if (running > 0) {
 p = p + smoothspeed / (max(0.25,dur)*samplerate);
 if (p >= 1) { p=p-1; cycleCount=cycleCount+1; b=hold>0?holdbank:ready; dur=max(0.25,duration); }
}
phase=p; bank=b; epoch=cycleCount; oldreset=restart; span=dur;
out1=p; out2=b+cycleCount*8; out3=running; out4=p; out5=b+cycleCount*8;
'''
writegen('p8_clock',clock,0,5)
# Four independent overlapping synthesis slots per part. Tables: time, velocity,
# pitch ratio, decay ratio, timbre; 4 banks x 8 lanes x 1024 events.
for kind in range(8):
 pre=f'''// PHASE/8 voice {kind+1}; trigger-to-envelope path stays in the signal domain.
Buffer events("p8_events"); Buffer samplebuf("p8_sample");
Param gain(0.6); Param pan(0); Param tune(0); Param decay(1); Param color(0.5); Param drive(0.15);
Param material(0.6); Param sampleframes(48000); Param samplesr(48000); Param external(0);
History index(0); History oldcode(-1); History cursor(0); History oldphase(0);
History g(0); History pn(0); History col(0.5); History mat(0.5); History drv(0.1);
History nseed({1831+kind*1709}); History lowpass(0); History hpold(0); History hpout(0); History cooldown(1);
'''
 for j in range(4):
  pre+=f'History age{j}(100); History vel{j}(0); History hz{j}(100); History de{j}(0.1); History tim{j}(0.5); History ph{j}(0); History start{j}(0); History rate{j}(1); History last{j}(0); History carry{j}(0); History fade{j}(1);\n'
 code=pre+f'''
sm=min(1,150/samplerate);
g=g+(gain-g)*sm; pn=pn+(pan-pn)*sm; col=col+(color-col)*sm; mat=mat+(material-mat)*sm; drv=drv+(drive-drv)*sm;
idx=index; slot=cursor;
if (in2 != oldcode || in1 < oldphase) {{ idx=0; }}
bank=floor(in2)%8;
row=bank*8192+{kind}*1024+min(idx,1023);
et=peek(events,row,0); ev=0; pit=1; dec=1; tone=0.5;
if (in3>0 && idx<1024 && et<=in1 && cooldown>=0.003) {{
 ev=peek(events,row,1); pit=peek(events,row,2); dec=peek(events,row,3); tone=peek(events,row,4);
 idx=idx+1;
}}
if(ev>0) {{ slot=(cursor+1)%4; }}
index=idx; oldcode=in2; oldphase=in1; cursor=slot;
cooldown=ev>0?0:cooldown+1/samplerate;
ns=(nseed*16807)%2147483647; nseed=ns; white=ns/1073741823.5-1;
lowpass=lowpass+(white-lowpass)*(1-exp(-twopi*1600/samplerate));
high=white-lowpass;
sum=0;
'''
 bases=[47,172,3700,243,121,1650,190,53]; decays=[.32,.18,.065,.33,.29,.023,.13,.25]
 for j in range(4):
  code+=f'''
cy{j}=carry{j}; fd{j}=fade{j};
a{j}=age{j}; v{j}=vel{j}; f{j}=hz{j}; d{j}=de{j}; t{j}=tim{j}; p{j}=ph{j}; st{j}=start{j}; rt{j}=rate{j};
if(ev>0 && slot=={j}) {{
 cy{j}=last{j}; fd{j}=0; a{j}=0; v{j}=ev; f{j}={bases[kind]}*pow(2,tune/12)*max(0.2,pit);
 d{j}=max(0.003,{decays[kind]}*dec*decay); t{j}=clamp(tone*0.35+col*0.3+mat*0.35,0,1);
 p{j}=0; st{j}=fract(pit*0.371+tone*0.613)*max(1,sampleframes-2048);
 rt{j}=pow(2,tune/12)*(tone>0.75?-1:1)*(0.55+pit*0.55);
}}
a{j}=min(100,a{j}+1/samplerate);
e{j}=exp(-a{j}/d{j}); at{j}=min(1,a{j}*3000);
'''
  if kind==0:
   expr=f'''p{j}=fract(p{j}+min(samplerate*0.2,f{j}*(1+5.5*exp(-a{j}/0.018)))/samplerate);
s{j}=sin(p{j}*twopi)*e{j}+0.2*high*exp(-a{j}/0.004)*(0.25+t{j});'''
  elif kind==1:
   expr=f'''p{j}=fract(p{j}+f{j}/samplerate);
s{j}=(0.46*sin(p{j}*twopi+sin(p{j}*twopi*1.47)*t{j}*1.2)+0.22*sin(p{j}*twopi*1.73))*exp(-a{j}/(d{j}*0.5))+high*e{j}*(0.33+t{j}*0.5);'''
  elif kind==2:
   expr=f'''p{j}=fract(p{j}+min(8500,f{j})/samplerate);
s{j}=(0.38*high+0.25*sin(p{j}*twopi)*sin(p{j}*twopi*1.414+sin(a{j}*19231)*t{j}))*e{j};'''
  elif kind==3:
   expr=f'''p{j}=fract(p{j}+min(3500,f{j})/samplerate);
s{j}=(sin(p{j}*twopi+sin(a{j}*f{j}*twopi*(1.414+t{j}*2.11))*(0.4+t{j}*7)*exp(-a{j}/(d{j}*0.6)))*0.53+0.16*sin(a{j}*f{j}*twopi*2.71))*e{j};'''
  elif kind==4:
   expr=f'''p{j}=fract(p{j}+min(4000,f{j}*(1+0.5*exp(-a{j}/0.013)))/samplerate);
s{j}=(sin(p{j}*twopi)*e{j}+0.4*sin(a{j}*f{j}*twopi*1.593)*exp(-a{j}/(d{j}*0.65))+0.2*sin(a{j}*f{j}*twopi*(2.135+t{j}*0.18))*exp(-a{j}/(d{j}*0.38)))*0.65;'''
  elif kind==5:
   expr=f'''p{j}=fract(p{j}+min(12000,f{j})/samplerate);
s{j}=(high*(0.3+t{j}*0.5)+sin(p{j}*twopi+3*sin(p{j}*twopi*1.13))*0.22)*e{j};'''
  elif kind==6:
   expr=f'''pos{j}=wrap(st{j}+a{j}*samplesr*rt{j},0,max(2,sampleframes-1));
k{j}=floor(pos{j}); frac{j}=pos{j}-k{j};
x{j}=mix(peek(samplebuf,k{j},0),peek(samplebuf,min(sampleframes-1,k{j}+1),0),frac{j});
w{j}=clamp(a{j}/max(0.01,d{j}*3),0,1);
s{j}=x{j}*sin(w{j}*pi)*sin(w{j}*pi)*0.9;'''
  else:
   expr=f'''p{j}=fract(p{j}+min(2500,f{j})/samplerate);
s{j}=sin(p{j}*twopi+sin(p{j}*twopi*(1.0+t{j}*0.5))*t{j}*3*e{j})*e{j}*0.7;'''
  code+=expr+f'''
fd{j}=min(1,fd{j}+1/(0.0015*samplerate));
render{j}=s{j}*v{j}*at{j}*fd{j}+cy{j}*(1-fd{j});
sum=sum+render{j}; last{j}=render{j}; carry{j}=cy{j}; fade{j}=fd{j};
age{j}=a{j}; vel{j}=v{j}; hz{j}=f{j}; de{j}=d{j}; tim{j}=t{j}; ph{j}=p{j}; start{j}=st{j}; rate{j}=rt{j};
'''
 code+='''
sh=tanh(sum*(1+drv*3))/(1+drv*1.6);
hp=sh-hpold+exp(-twopi*8/samplerate)*hpout; hpold=sh; hpout=hp;
audio=hp*g*0.48;
out1=audio*sqrt((1-clamp(pn,-1,1))*0.5);
out2=audio*sqrt((1+clamp(pn,-1,1))*0.5);
'''
 writegen('p8_voice'+str(kind+1),code,3,2)
fx='''// Damped feedback delay network + stereo echo, all feedback bounded.
Param space(0.25); Param feedback(0.35); Param delaytime(0.19); Param repeat(0);
Delay left(768000); Delay right(768000);
Delay d1(48000); Delay d2(48000); Delay d3(48000); Delay d4(48000);
History lp1(0); History lp2(0); History lp3(0); History lp4(0); History wet(0); History dt(0.19);
wet=wet+(space-wet)*min(1,50/samplerate);
dt=dt+(delaytime-dt)*min(1,3/samplerate);
tl=left.read(clamp(dt,0.013,1.7)*samplerate,interp="linear");
tr=right.read(clamp(dt*1.319,0.013,1.9)*samplerate,interp="linear");
fb=clamp(feedback,0,0.76);
left.write(tanh(in1+tr*fb)); right.write(tanh(in2+tl*fb));
x1=d1.read(samplerate*0.0371); x2=d2.read(samplerate*0.0533);
x3=d3.read(samplerate*0.0717); x4=d4.read(samplerate*0.0893);
lp1=lp1+(x1-lp1)*0.24; lp2=lp2+(x2-lp2)*0.24; lp3=lp3+(x3-lp3)*0.24; lp4=lp4+(x4-lp4)*0.24;
common=(lp1+lp2+lp3+lp4)*0.5;
input=(in1+in2)*0.18+(tl+tr)*0.05;
g=0.64+clamp(space,0,1)*0.18;
d1.write(tanh(input+(common-lp1)*g)); d2.write(tanh(input+(common-lp2)*g));
d3.write(tanh(input+(common-lp3)*g)); d4.write(tanh(input+(common-lp4)*g));
out1=(tl*0.48+(x1+x3)*0.42)*wet;
out2=(tr*0.48+(x2+x4)*0.42)*wet;
'''
writegen('p8_space',fx,2,2)
# Original deterministic, synthetic source material, no external samples.
sr=48000
with wave.open(str(ROOT/'media'/'p8-source.wav'),'wb') as w:
 w.setnchannels(1);w.setsampwidth(2);w.setframerate(sr)
 vals=[];seed=29
 for i in range(sr*2):
  t=i/sr;seed=(seed*16807)%2147483647;n=seed/1073741823.5-1
  env=math.exp(-((t%0.137)/0.06))
  s=math.sin(2*math.pi*137*t+3.2*math.sin(2*math.pi*413.7*t))*0.45+math.sin(2*math.pi*(331*t+89*t*t))*0.18+n*0.12
  vals.append(struct.pack('<h',int(max(-.99,min(.99,s*env))*32767)))
 w.writeframes(b''.join(vals))
print('Built DSP files and original source buffer:',ROOT)
