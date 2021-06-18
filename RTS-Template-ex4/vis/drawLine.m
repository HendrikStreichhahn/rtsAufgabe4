function [p,hgt] = drawLine(startC,endC,color,style)
hgt = hgtransform;
p=plot([startC(1),endC(1)],[startC(2),endC(2)],style,'Color',color,'Parent',hgt);
end

