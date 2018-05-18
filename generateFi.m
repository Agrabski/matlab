function fi = generateFi(K,N)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
fi = zeros(N,K);
for x =1:K
    for y=1:N
        fi(y,x)=calculateDataPoint(calculatePrime(y,N),x,K);
        
    end
end
end

