function [matrix] = generateMatrix(n,alfa)
matrix =zeros(n,n);
matrix(1:n,1)= log(alfa);
matrix(1,1:n)= log(alfa);
matrix(1,1)=log(alfa)*log(alfa);

for i = 2:n
    matrix(i,i:n)=i*9;
    matrix(i:n,i)=i*9;
end
end