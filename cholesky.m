function matrix = cholesky(matrixIn)
matrix = zeros(size(matrixIn,1));

for x = 1:size(matrixIn,1) 
    for y = 1:x
        if x ~= y
            matrix(x,y)=(matrixIn(x,y)-sumMat1(matrix,x,y))/matrix(y,y);
        else
            matrix(x,x)=sqrt(matrixIn(x,x)-sumMat(matrix,x));
        end
    end
end
end

