function [handle] = createTurntable(posx,posy,angle,color)
%CREATETURNTABLE Summary of this function goes here
%   Detailed explanation goes here
hgt = hgtransform;
hgtRotate = hgtransform;
hgtExtend = hgtransform;
group = hggroup(hgt);
rotate = hggroup(hgtRotate);
extend = hggroup(hgtExtend);

set(hgtRotate,'Parent',hgt);
set(hgtExtend,'Parent',hgtRotate);

posVec=[posx,posy];

[p1,h1]=drawCircle(345/2,posVec+[747.5,200],0.1,'#808080','');
[p2,h2]=drawRectangle(230,180,getCenter(p1)+[0,0],0,'#545454');
[p3,h3]=drawRectangle(58,115,getCenter(p2)+[-86,-147.5],0,'#545454');
[p4,h4]=drawRectangle(58,115,getCenter(p2)+[86,-147.5],0,'#545454');
[p5,h5]=drawRectangle(135,170,getCenter(p2)+[0,-175],0,'#ff0000');
[p6,h6]=drawRectangle(55,155,getCenter(p2)+[0,72.5],0,'#abffff');
[p7,h7]=drawRectangle(64,59,getCenter(p6)+[0,-105],0,'#ff0000');
[V4,h8]=drawCircle(30/2,getCenter(p7)+[0,0],0.1,'#ff8000','V4');

tmp=getCenter(p2)+[-345/2+30,0];
[M1CW,h9]=drawArrow(20,25,tmp+[0,40],80,'#ff8000');
M1=text(tmp(1),tmp(2),'M1','FontSize',8,'HorizontalAlignment','center');
[M1CCW,h10]=drawArrow(20,25,tmp+[0,-40],-80,'#ff8000');

[p11,h11]=drawRectangle(58,115,getCenter(p2)+[86,-147.5],0,'#545454');
[p12,h12]=drawRectangle(135,170,getCenter(p2)+[0,-175],0,'#ff0000');
[p13,h13]=drawRectangle(55,155,getCenter(p2)+[0,72.5],0,'#abffff');

set(h1,'Parent',rotate);
set(h2,'Parent',rotate);
set(h3,'Parent',rotate);
set(h4,'Parent',rotate);
set(h5,'Parent',rotate);
set(h6,'Parent',rotate);
set(h7,'Parent',rotate);
set(h8,'Parent',rotate);
set(h9,'Parent',rotate);
set(M1,'Parent',rotate);
set(h10,'Parent',rotate);
set(h11,'Parent',rotate);
set(h12,'Parent',rotate);
set(h13,'Parent',rotate);

[p14,h14]=drawRectangle(115,55,getCenter(p2)+[0,-117.5],0,'#ff5757');
[p15,h15]=drawRectangle(15,195,getCenter(p14)+[0,125],0,'#545454');
[p16,h16]=drawRectangle(30,55,getCenter(p15)+[0,125],0,'#545454');

set(h14,'Parent',extend);
set(h15,'Parent',extend);
set(h16,'Parent',extend);

[p17,h17]=drawRectangle(55,55,posVec+[860,415+20],0,'#545454');
[p18,h18]=drawRectangle(100,30,getCenter(p17)+[-77.5,-12.5],0,'#545454');
[p19,h19]=drawCircle(60/2,getCenter(p18)+[-35,0],0.1,'#808080','');
[p20,h20]=drawCircle(10/2,getCenter(p19),0.1,'#ffffff','');
[M3,h21]=drawCircle(30/2,getCenter(p17)+[0,0],0.1,'#ff8000','M3');

[p22,h22]=drawRectangle(40,40,posVec+[885.5,352.5],0,'#000000');
[p23,h23]=drawRectangle(5,30,getCenter(p22)+[(40+5)/-2,0],0,'#ff0000');
[S3,h24]=drawCircle(30/2,getCenter(p22),0.1,'#ff8000','S3');

[p25,h25]=drawRectangle(40,40,getCenter(p22)+[40,-290.5],0,'#000000');
[p26,h26]=drawRectangle(30,5,getCenter(p25)+[0,(40+5)/2],0,'#ff0000');
[S2,h27]=drawCircle(30/2,getCenter(p25),0.1,'#ff8000','S2');

[p28,h28]=drawRectangle(40,40,getCenter(p22)+[0,-330.5],0,'#000000');
[p29,h29]=drawRectangle(5,30,getCenter(p28)+[(40+5)/-2,0],0,'#ff0000');
[S1,h30]=drawCircle(30/2,getCenter(p28),0.1,'#ff8000','S1');

set(h17,'Parent',group);
set(h18,'Parent',group);
set(h19,'Parent',group);
set(h20,'Parent',group);
set(h21,'Parent',group);
set(h22,'Parent',group);
set(h23,'Parent',group);
set(h24,'Parent',group);
set(h25,'Parent',group);
set(h26,'Parent',group);
set(h27,'Parent',group);
set(h28,'Parent',group);
set(h29,'Parent',group);
set(h30,'Parent',group);

handle.hgt=hgt;
handle.rotate=hgtRotate;
handle.extend=hgtExtend;

handle.gfx.V4=V4;
handle.gfx.S1=S1;
handle.gfx.S2=S2;
handle.gfx.S3=S3;
handle.gfx.M1CW=M1CW;
handle.gfx.M1CCW=M1CCW;
handle.gfx.M3=M3;

% hgtMove.Matrix=hgtMove.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1; 0 0 0 0];
% h2.Matrix=h2.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1.01; 0 0 0 0];
% h12.Matrix=h12.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1.02; 0 0 0 0];
% h13.Matrix=h13.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1.02; 0 0 0 0];
% h18.Matrix=h18.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1; 0 0 0 0];
% h19.Matrix=h19.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1; 0 0 0 0];
% h14.Matrix=h14.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1.01; 0 0 0 0];
% h16.Matrix=h16.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1.01; 0 0 0 0];
end

