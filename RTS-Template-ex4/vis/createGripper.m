function [handle] = createGripper(posx,posy,angle,color)
%CREATETURNTABLE Summary of this function goes here
%   Detailed explanation goes here
hgt = hgtransform;
hgtMove = hgtransform;
group = hggroup(hgt);
move = hggroup(hgtMove);

set(hgtMove,'Parent',hgt);

posVec=[posx,posy];

[p1,h1]=drawRectangle(290,75,posVec+[747.5,-117.5],0,'#545454');
[p2,h2]=drawRectangle(55,175,getCenter(p1)+[0,0],0,'#545454');
[p3,h3]=drawRectangle(55,55,getCenter(p2)+[0,(175+55)/2],0,'#ff0000');
[p4,h4]=drawRectangle(55,55,getCenter(p2)+[0,(175+55)/-2],0,'#ff0000');
[p5,h5]=drawRectangle(40,40,getCenter(p3)+[(40+55)/2,-47.5],0,'#ff0000');
[p6,h6]=drawRectangle(40,40,getCenter(p3)+[(40+55)/-2,-47.5],0,'#ff0000');
[p7,Gripper]=drawCircle(20/2,getCenter(p3),0.1,'#ffffff','');
[p8,h8]=drawCircle(15/2,getCenter(p5),0.1,'#ababab','');
[p9,h9]=drawCircle(15/2,getCenter(p6),0.1,'#ababab','');

[M5F,h10]=drawArrow(20,25,getCenter(p1)+[45,0],180,'#ff8000');
tmp=getCenter(M5F)+[30,0];
M5=text(tmp(1),tmp(2),'M5','FontSize',8,'HorizontalAlignment','center');
[M5B,h11]=drawArrow(20,25,getCenter(M5F)+[70,0],0,'#ff8000');

[V1,h12]=drawCircle(30/2,getCenter(p7)+[0,-40],0.1,'#ff8000','V1');
[V2,h13]=drawCircle(30/2,getCenter(V1)+[0,-35],0.1,'#ff8000','V2');

set(h1,'Parent',move);
set(h2,'Parent',move);
set(h3,'Parent',move);
set(h4,'Parent',move);
set(h5,'Parent',move);
set(h6,'Parent',move);
set(Gripper,'Parent',move);
set(h8,'Parent',move);
set(h9,'Parent',move);
set(h10,'Parent',move);
set(M5,'Parent',move);
set(h11,'Parent',move);
set(h12,'Parent',move);
set(h13,'Parent',move);


[p14,h14]=drawRectangle(55,115,posVec+[-87.5,-147.5],0,'#545454');
[p15,h15]=drawRectangle(55,55,getCenter(p14)+[0,(115+55)/-2],0,'#ff0000');
[p16,h16]=drawRectangle(55,115,getCenter(p14)+[925,0],0,'#545454');
[p17,h17]=drawRectangle(55,55,getCenter(p16)+[0,(115+55)/-2],0,'#ff0000');
[p18,h18]=drawRectangle(1100,55,getCenter(p14)+[507.5,30],0,'#ff0000');
[p19,h19]=drawRectangle(995,15,getCenter(p18)+[-45,-115],0,'#d6d6d6');


[p20,h20]=drawRectangle(40,40,getCenter(p18)+[-595,0],0,'#000000');
[p21,h21]=drawRectangle(5,30,getCenter(p20)+[(40+5)/2,0],0,'#ff0000');
[S7,h22]=drawCircle(30/2,getCenter(p20),0.1,'#ff8000','S7');
[p23,h23]=drawRectangle(40,40,getCenter(p20)+[1088,0],0,'#000000');
[p24,h24]=drawRectangle(5,30,getCenter(p23)+[(40+5)/-2,0],0,'#ff0000');
[S4,h25]=drawCircle(30/2,getCenter(p23),0.1,'#ff8000','S4');

set(h14,'Parent',group);
set(h15,'Parent',group);
set(h16,'Parent',group);
set(h17,'Parent',group);
set(h18,'Parent',group);
set(h19,'Parent',group);
set(h20,'Parent',group);
set(h21,'Parent',group);
set(h22,'Parent',group);
set(h23,'Parent',group);
set(h24,'Parent',group);
set(h25,'Parent',group);

handle.hgt=hgt;
handle.move=hgtMove;
handle.gfx.V1=V1;
handle.gfx.V2=V2;
handle.gfx.M5F=M5F;
handle.gfx.M5B=M5B;
handle.gfx.S4=S4;
handle.gfx.S7=S7;

% 
hgtMove.Matrix=hgtMove.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1; 0 0 0 0];
h2.Matrix=h2.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1.01; 0 0 0 0];
h12.Matrix=h12.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1.02; 0 0 0 0];
h13.Matrix=h13.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1.02; 0 0 0 0];
h18.Matrix=h18.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1; 0 0 0 0];
h19.Matrix=h19.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1; 0 0 0 0];
h14.Matrix=h14.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1.01; 0 0 0 0];
h16.Matrix=h16.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1.01; 0 0 0 0];
end

