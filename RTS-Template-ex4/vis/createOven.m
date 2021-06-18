function [handle] = createOven(posx,posy,angle,color)
%CREATETURNTABLE Summary of this function goes here
%   Detailed explanation goes here
hgt = hgtransform;
hgtMove = hgtransform;
group = hggroup(hgt);
move = hggroup(hgtMove);

set(hgtMove,'Parent',hgt);

posVec=[posx,posy];

[p1,h1]=drawRectangle(120,110,posVec,0,'#ff5757');
[p2,h2]=drawRectangle(55,110,getCenter(p1)+[60+55/2,0],0,'#ff0000');
[p3,h3]=drawRectangle(55,110,getCenter(p1)+[-(60+55/2),0],0,'#ff0000');
[p4,h4]=drawRectangle(120,20,getCenter(p1)+[0,55+20/2],0,'#ff0000');
[p5,h5]=drawRectangle(55,175,getCenter(p1)+[60+55/2,55+175/2],0,'#808080');
[p6,h6]=drawRectangle(55,175,getCenter(p1)+[-(60+55/2),55+175/2],0,'#808080');
[p7,h7]=drawRectangle(25,20,getCenter(p5)+[(55+25)/2,(175+20)/2-30],0,'#808080');

[M4R,h38]=drawArrow(20,25,getCenter(p5)+[0,40],90,'#ff8000');
tmp=getCenter(p5);
M4=text(tmp(1),tmp(2),'M4','FontSize',8,'HorizontalAlignment','center');
[M4E,h39]=drawArrow(20,25,getCenter(p5)+[0,-40],-90,'#ff8000');

set(h1,'Parent',move);
set(h2,'Parent',move);
set(h3,'Parent',move);
set(h4,'Parent',move);
set(h5,'Parent',move);
set(h6,'Parent',move);
set(h7,'Parent',move);
set(h38,'Parent',move);
set(M4,'Parent',move);
set(h39,'Parent',move);


[p8,h8]=drawRectangle(15,290,posVec+[87.5,280],0,'#D6D6D6');
[p9,h9]=drawRectangle(15,290,posVec+[-87.5,280],0,'#D6D6D6');

[p10,h10]=drawRectangle(685,55,posVec+[57.5,457.5],0,'#545454');
[p11,h11]=drawRectangle(10,345,getCenter(p10)+[-347.5,-145],0,'#ff0000');
[p12,h12]=drawRectangle(10,345,getCenter(p10)+[347.5,-145],0,'#ff0000');
[p13,h13]=drawRectangle(55,110,getCenter(p11)+[32.5,-172.5],0,'#545454');
[p14,h14]=drawRectangle(55,110,getCenter(p13)+[0,-110],0,'#545454');
[p15,h15]=drawRectangle(55,55,getCenter(p13)+[55,-27.5],0,'#808080');
[p16,h16]=drawRectangle(55,55,getCenter(p14)+[55,-27.5],0,'#545454');
[p17,h17]=drawRectangle(55,55,getCenter(p16)+[55,0],0,'#ff8000');
[p18,h18]=drawRectangle(55,55,getCenter(p17)+[295,0],0,'#ffff57');
[p19,h19]=drawRectangle(55,55,getCenter(p18)+[55,0],0,'#545454');
[p20,h20]=drawRectangle(55,110,getCenter(p19)+[55,55/2],0,'#545454');
[p21,h21]=drawRectangle(55,55,getCenter(p19)+[0,55*2],0,'#808080');
[p22,h22]=drawRectangle(230,55,getCenter(p21)+[142.5,0],0,'#545454');
[p23,h23]=drawRectangle(55,55,getCenter(p22)+[55/2,55],0,'#545454');

[p24,h24]=drawRectangle(105,255,posVec+[277.5,282.5],0,'#57abff');
[p25,h25]=drawRectangle(60,230,posVec+[-175,275],0,'#ffff57');
[p26,h26]=drawRectangle(20,230,getCenter(p25)+[35,0],0,'#ff0000');

[p27,h27]=drawRectangle(40,40,posVec+[165,205],0,'#000000');
[p28,h28]=drawRectangle(5,30,getCenter(p27)+[-22.5,0],0,'#ff0000');
[p29,h29]=drawRectangle(40,40,getCenter(p27)+[0,195],0,'#000000');
[p30,h30]=drawRectangle(5,30,getCenter(p29)+[-22.5,0],0,'#ff0000');


[p31,h31]=drawRectangle(350,30,posVec+[0,112.5],0,'#ff5757');

[L2,h32]=drawCircle(30/2,getCenter(p18),0.1,'#ff8000','L2');
[V3,h33]=drawCircle(30/2,getCenter(p21),0.1,'#ff8000','V3');
[S6,h34]=drawCircle(30/2,getCenter(p27),0.1,'#ff8000','S6');
[S5,h35]=drawCircle(30/2,getCenter(p29),0.1,'#ff8000','S5');
[LED1,h36]=drawCircle(45/2,getCenter(p25),0.1,'#ff8000','LED1');
[CP1,h37]=drawCircle(40/2,getCenter(p24),0.1,'#ff8000','CP1');
[L2Line,h38]=drawLine(getCenter(p17)+[30,0],getCenter(p18)+[-30,0],'#ffff57','--');
[p39,h39]=drawLine(getCenter(p17)+[30,0],getCenter(p18)+[-(295/2),0],'#ffff57','--');


set(h8,'Parent',group);
set(h9,'Parent',group);
set(h10,'Parent',group);
set(h11,'Parent',group);
set(h12,'Parent',group);
set(h13,'Parent',group);
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
set(h26,'Parent',group);
set(h27,'Parent',group);
set(h28,'Parent',group);
set(h29,'Parent',group);
set(h30,'Parent',group);
set(h31,'Parent',group);
set(h32,'Parent',group);
set(h33,'Parent',group);
set(h34,'Parent',group);
set(h35,'Parent',group);
set(h36,'Parent',group);
set(h37,'Parent',group);
set(h38,'Parent',group);
set(h39,'Parent',group);

handle.hgt=hgt;
handle.move=hgtMove;
handle.gfx.L2=L2;
handle.gfx.V3=V3;
handle.gfx.S6=S6;
handle.gfx.S5=S5;
handle.gfx.CP1=CP1;
handle.gfx.LED1=LED1;
handle.gfx.M4E=M4E;
handle.gfx.M4R=M4R;
handle.gfx.Door=h31;
handle.gfx.L2Line=L2Line;

hgtMove.Matrix=hgtMove.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1; 0 0 0 0];
h8.Matrix=h8.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -2; 0 0 0 0];
h9.Matrix=h9.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -2; 0 0 0 0];
h31.Matrix=h31.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1; 0 0 0 0];


% handle.param.TableSector=0;
% handle.param.TableSectorLock=0;
end

