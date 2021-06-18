function [handle] = createWorkpiece(posx,posy,color)
%CREATEWORKPIECE Summary of this function goes here
%   Detailed explanation goes here

% hgt = hgtransform;
% hgtMove = hgtransform;
% move = hggroup(hgtMove);
%     
% set(hgtMove,'Parent',hgt);

[wp,h1]=drawCircle(82/2,[0,0],0.1,color,'');%505050

h1.Matrix=makehgtform('translate',[posx posy 0],'zrotate',deg2rad(0));
set(h1,'Visible',false);

handle.hgt=h1;
handle.move=h1;
handle.gfx.wp=wp;

handle.param.station=-1;
handle.param.lastTurntableAngle=0;
handle.param.lastAngle=0;
end

