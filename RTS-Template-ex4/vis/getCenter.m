function [ret] = getCenter(patch)
%GETCENTER Summary of this function goes here
%   Detailed explanation goes here
x = min(patch.Vertices(:,1))+(max(patch.Vertices(:,1))-min(patch.Vertices(:,1)))/2;
y = min(patch.Vertices(:,2))+(max(patch.Vertices(:,2))-min(patch.Vertices(:,2)))/2;
ret=[x,y];
end

