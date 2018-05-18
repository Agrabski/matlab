function y = calculateDataPoint(x,k,K)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if(abs(x-calculatePrime(k,K))<1)
y=2*abs(x-calculatePrime(k,K))^3-3*abs(x-calculatePrime(k,K))^2+1;
else
    y=0;
end
end