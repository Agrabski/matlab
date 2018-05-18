function y = generateValues(N)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
y=zeros(N,1);
for i = 1:N
    y(i)=cos(pi*calculatePrime(i,N))*exp(calculatePrime(i,N));
end
end

