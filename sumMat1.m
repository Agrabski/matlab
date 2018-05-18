function out = sumMat1(matrixIn,dimension1,dimension2)
out = 0;
for i = 1:(dimension2-1)
    out = out +matrixIn(dimension1,i)*matrixIn(dimension2,i);
end
end

