function out = sumMat(matrix,dimension)
out = 0;
for i = 1:(dimension-1)
    out = out +(matrix(dimension,i)*(matrix(dimension,i)));
end
end

