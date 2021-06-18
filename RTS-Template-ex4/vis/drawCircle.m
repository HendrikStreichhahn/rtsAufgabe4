function [p,hgt] = drawCircle(radius,pos,angle,color,txt)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% outputArg1 = inputArg1;
% outputArg2 = inputArg2;
pos_x=pos(1);
pos_y=pos(2);
hgt = hgtransform;
pts=0:angle:2*pi; 
x=radius*cos(pts)+pos_x;
y=radius*sin(pts)+pos_y;
p=patch('XData',x,'YData',y,'FaceColor',color,'Parent',hgt);
text(pos_x,pos_y,txt,'FontSize',8,'HorizontalAlignment','center','Parent',hgt);
end

% https://de.mathworks.com/matlabcentral/answers/73450-fixed-size-text-that-zooms-scales-with-a-plot