autowatch=1;
inlets=1;outlets=1;
mgraphics.init();mgraphics.relative_coords=0;mgraphics.autofill=0;
var events=[[],[],[],[],[],[],[],[]], phase=0,selected=0, frozen=0;
var names=['KICK','SNARE','HAT','METAL','MEMBRANE','CLICK','GRAIN','BASS'];
function clear(){events=[[],[],[],[],[],[],[],[]];}
function lane(){var a=arrayfromargs(arguments),i=a.shift(),ev=[];for(var j=0;j<a.length;j+=2)ev.push([a[j],a[j+1]]);events[i]=ev;}
function position(v){phase=v;mgraphics.redraw();}
function select(v){selected=v;mgraphics.redraw();}
function freeze(v){frozen=v;mgraphics.redraw();}
function bang(){mgraphics.redraw();}
function paint(){var w=box.rect[2]-box.rect[0],h=box.rect[3]-box.rect[1],rh=(h-22)/8,left=105,right=w-8;
 mgraphics.set_source_rgba(.08,.1,.1,1);mgraphics.rectangle(0,0,w,h);mgraphics.fill();
 mgraphics.select_font_face('Arial');mgraphics.set_font_size(11);
 for(var i=0;i<8;i++){var y=i*rh;if(i===selected){mgraphics.set_source_rgba(.16,.22,.19,1);mgraphics.rectangle(0,y,w,rh);mgraphics.fill();}mgraphics.set_source_rgba(.69,.76,.71,1);mgraphics.move_to(10,y+rh*.63);mgraphics.show_text(('0'+(i+1)).slice(-2)+'  '+names[i]);mgraphics.set_source_rgba(.21,.26,.24,1);mgraphics.rectangle(left,y+rh-2,right-left,1);mgraphics.fill();var e=events[i];for(var j=0;j<e.length;j++){var x=left+e[j][0]*(right-left),eh=3+e[j][1]*(rh-10);mgraphics.set_source_rgba(frozen?.85:.68,frozen?.72:.85,frozen?.43:.72,.5+e[j][1]*.5);mgraphics.rectangle(x,y+rh-3-eh,2.5,eh);mgraphics.fill();}}
 mgraphics.set_source_rgba(.9,.92,.87,.7);mgraphics.rectangle(left+phase*(right-left),0,1,h-22);mgraphics.fill();mgraphics.set_source_rgba(.52,.61,.55,1);mgraphics.move_to(left,h-5);mgraphics.show_text('0');mgraphics.move_to(left+(right-left)*.5,h-5);mgraphics.show_text('EVENT TIME');mgraphics.move_to(right-30,h-5);mgraphics.show_text('END');}
function onclick(x,y){var h=box.rect[3]-box.rect[1];var i=Math.floor(y/((h-22)/8));if(i>=0&&i<8){selected=i;outlet(0,'select',i);mgraphics.redraw();}}
