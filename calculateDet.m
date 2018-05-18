function [result] = calculateDet(rangeLow,rangeHigh,n,step)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
result=zeros(int8(int8(rangeHigh/step)-int8(rangeLow/step)),1);
for i = int8(rangeLow/step):int8(rangeHigh/step)
    result(1+i-int8(rangeLow/step))=det(generateMatrix(i,n));
end
end

