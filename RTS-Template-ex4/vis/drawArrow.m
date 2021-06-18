function [p,hgt] = drawArrow(width,height,pos,angle,color)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% outputArg1 = inputArg1;
% outputArg2 = inputArg2;
pos_x=pos(1);
pos_y=pos(2);
hgt = hgtransform;
x = [-width,    -height/2, 0, -height/2,    -width];
y = [+height/2, +height/2, 0 , -(+height/2), -(+height/2)];
xy=([cosd(angle) -sind(angle); sind(angle), cosd(angle)]*[x;y])+[pos_x;pos_y];
p=patch('XData',xy(1,:),'YData',xy(2,:),'FaceColor',color,'Parent',hgt);
end

