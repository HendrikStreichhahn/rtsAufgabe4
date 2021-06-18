function [p,hgt] = drawTriangle(width,height,pos_x,pos_y,angle,color)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

hgt = hgtransform;
x = [-width/2, width/2, 0];
y = [-height, -height, 0];
xy=[cosd(angle) -sind(angle); sind(angle), cosd(angle)]*[x;y];
xy=xy+[pos_x;pos_y];
p=patch('XData',xy(1,:),'YData',xy(2,:),'FaceColor',color,'Parent',hgt);
end

