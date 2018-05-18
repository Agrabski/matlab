function y = calculateValue(coeficients,value,K )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y=0;

for i =1:size(coeficients,2)
    y=y+coeficients(i)*calculateDataPoint(value,i,K);
end
end

