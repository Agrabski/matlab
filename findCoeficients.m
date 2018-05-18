function c = findCoeficients(N,K,sigma)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%use first K values or calculate K values?
fi=generateFi(K,N);
fiTransposed = transpose(fi);
Lside = fiTransposed*fi;
error = zeros(N,1);
if sigma ~= 0
    error = randn(N,1).*sigma;
end
values=generateValues(N)+error;
rSide=fiTransposed*values;
c=choleskySolve(Lside,rSide);
end
