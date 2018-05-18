function vectorX = choleskySolve(matrixA,matrixB)
l = cholesky(matrixA);
r = transpose( cholesky(matrixA));
y=zeros(1,size(matrixA,1));
for i = 1:size(matrixA,1)
y(i)=(matrixB(i)-multiply(l,i,y,i-1))/l(i,i);
end
vectorX=zeros(1,size(matrixA,1));
for i = 0:size(matrixA,1)-1
    a = size(matrixA,1)-i;
    vectorX(a)=(y(a)-multiplyReverse(r,a,vectorX,size(matrixA,1),a))/r(a,a);
end


end

function result = multiply(vectorA,dimension,vectorB,stop)
result = 0;
for i = 1:stop
    result = result + vectorA(dimension,i)*vectorB(i);
end
end

function result = multiplyReverse(vectorA,dimension,vectorB,stop,begin)
result = 0;
for i = begin:stop
    result = result + vectorA(dimension,i)*vectorB(i);
end
end