function [handle] = createConveyor(posx,posy,angle,color)
%CREATETURNTABLE Summary of this function goes here
%   Detailed explanation goes here
hgt = hgtransform;
hgtMove = hgtransform;
group = hggroup(hgt);
move = hggroup(hgtMove);

set(hgtMove,'Parent',hgt);

posVec=[posx,posy];

[p1,h1]=drawRectangle(115,510,posVec+[1153.5,85],0,'#000000');
[p2,h2]=drawRectangle(55,450,getCenter(p1)+[-85,0],0,'#545454');
[p3,h3]=drawRectangle(55,450,getCenter(p1)+[85,0],0,'#545454');
[p4,h4]=drawRectangle(25,115,getCenter(p2)+[(55+25)/-2,115],0,'#ff0000');
[p5,h5]=drawRectangle(225,285,getCenter(p1)+[0,85],0,'#ff0000');
[p6,h6]=drawRectangle(55,55,getCenter(p3)+[(55+55)/2,-147.5],0,'#ff8000');
[p7,h7]=drawRectangle(55,55,getCenter(p2)+[(55+55)/-2,-147.5],0,'#ffff57');
[L1,h8]=drawCircle(30/2,getCenter(p7),0.1,'#ff8000','L1');
[p9,h9]=drawArrow(55,80,getCenter(p1)+[0,-120],-90,'#ff8000');
[M2,h10]=drawCircle(30/2,getCenter(p3)+[0,-80],0.1,'#ff8000','M2');
[L1Line,h11]=drawLine(getCenter(p7)+[30,0],getCenter(p6)+[-30,0],'#ffff57','--');
[p12,h12]=drawLine(getCenter(p7)+[30,0],getCenter(p6)+[-(295/2),0],'#ffff57','--');

set(h1,'Parent',group);
set(h2,'Parent',group);
set(h3,'Parent',group);
set(h4,'Parent',group);
set(h5,'Parent',group);
set(h6,'Parent',group);
set(h7,'Parent',group);
set(h8,'Parent',group);
set(h9,'Parent',group);
set(h10,'Parent',group);
set(h11,'Parent',group);
set(h12,'Parent',group);

handle.hgt=hgt;
handle.move=hgtMove;

handle.gfx.L1=L1;
handle.gfx.L1Line=L1Line;
handle.gfx.M2=M2;
handle.gfx.M2A=p9;

% 
% % hgtMove.Matrix=hgtMove.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 -1; 0 0 0 0];
h5.Matrix=h5.Matrix+[ 0 0 0 0; 0 0 0 0 ;0 0 0 1; 0 0 0 0];

% 
% 
% % handle.param.TableSector=0;
% % handle.param.TableSectorLock=0;
end

