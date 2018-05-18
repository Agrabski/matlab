%task2.1

figure("Name","matrix determinant");
set(gca, 'YScale', 'log');
hold on;
in=linspace(0.9,1.1);
out=zeros(1,100);
for i =1:100
    out(i)=det(generateMatrix(3,in(i)));
end
plot(in,out);
hold on;
for i =1:100
    out(i)=det(generateMatrix(10,in(i)));
end
plot(in,out);
hold on;
for i =1:100
    out(i)=det(generateMatrix(20,in(i)));
end
plot(in,out);
%task 2.2

figure("Name","matrix condition number");

for i =1:100
    out(i)=cond(generateMatrix(3,in(i)));
end
plot(in,out);
hold on;
for i =1:100
    out(i)=cond(generateMatrix(10,in(i)));
end
plot(in,out);
hold on;
for i =1:100
    out(i)=cond(generateMatrix(20,in(i)));
end
plot(in,out);



%task 4
clear;
in=linspace(0.9,1.1,100);
out=zeros(3,size(in,1));
for i =1:size(in,1)
    out(:,i)=choleskySolve(generateMatrix(3,in(i)),generateMatrix(3,in(i))*transpose(linspace(1,3,3)));
    tmp = linsolve(generateMatrix(3,in(i)),generateMatrix(3,in(i))*transpose(linspace(1,3,3)));
end
out=zeros(10,size(in,1));
for i =1:size(in,1)
    out(:,i)=choleskySolve(generateMatrix(10,in(i)),generateMatrix(10,in(i))*transpose(linspace(1,10,10)));
end
out=zeros(20,size(in,1));
for i =1:size(in,1)
    out(:,i)=choleskySolve(generateMatrix(20,in(i)),generateMatrix(20,in(i))*transpose(linspace(1,20,20)));
end

%task 5

figure("Name","equation solution accuracy 2norm");
set(gca, 'YScale', 'log');
hold on;
in=linspace(0.9,1.1,100);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm(choleskySolve(generateMatrix(3,in(i)),generateMatrix(3,in(i))*transpose(linspace(1,3,3)))-(linspace(1,3,3)),2)/norm(transpose(linspace(1,3,3)),2);
end
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm(choleskySolve(generateMatrix(10,in(i)),generateMatrix(10,in(i))*transpose(linspace(1,10,10)))-(linspace(1,10,10)),2)/norm(transpose(linspace(1,10,10)),2);
end
hold on;
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm(choleskySolve(generateMatrix(20,in(i)),generateMatrix(20,in(i))*transpose(linspace(1,20,20)))-(linspace(1,20,20)),2)/norm(transpose(linspace(1,20,20)),2);
end
hold on;
plot(in,out)
legend("n=3","n=10","n=20");
figure("Name","equation solution accuracy infnorm");
set(gca, 'YScale', 'log');
hold on;
in=linspace(0.9,1.1,100);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm(choleskySolve(generateMatrix(3,in(i)),generateMatrix(3,in(i))*transpose(linspace(1,3,3)))-(linspace(1,3,3)),inf)/norm(transpose(linspace(1,3,3)),inf);
end
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm(choleskySolve(generateMatrix(10,in(i)),generateMatrix(10,in(i))*transpose(linspace(1,10,10)))-(linspace(1,10,10)),inf)/norm(transpose(linspace(1,10,10)),inf);
end
hold on;
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm(choleskySolve(generateMatrix(20,in(i)),generateMatrix(20,in(i))*transpose(linspace(1,20,20)))-(linspace(1,20,20)),inf)/norm(transpose(linspace(1,20,20)),inf);
end
hold on;
plot(in,out)

legend("n=3","n=10","n=20");
figure("Name","equation solution accuracy 2norm for / operator");

set(gca, 'YScale', 'log');
hold on;
in=linspace(0.9,1.1,100);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm((generateMatrix(3,in(i))\(generateMatrix(3,in(i))*transpose(linspace(1,3,3))))-transpose(linspace(1,3,3)),2)/norm(transpose(linspace(1,3,3)),2);
end
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm((generateMatrix(10,in(i))\(generateMatrix(10,in(i))*transpose(linspace(1,10,10))))-transpose(linspace(1,10,10)),2)/norm(transpose(linspace(1,10,10)),2);
end
hold on;
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm((generateMatrix(20,in(i))\(generateMatrix(20,in(i))*transpose(linspace(1,20,20))))-transpose(linspace(1,20,20)),2)/norm(transpose(linspace(1,20,20)),2);
end
hold on;
plot(in,out)
legend("n=3","n=10","n=20");
figure("Name","equation solution accuracy infnorm for / operator");
set(gca, 'YScale', 'log');
hold on;
in=linspace(0.9,1.1,100);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm((generateMatrix(3,in(i))\(generateMatrix(3,in(i))*transpose(linspace(1,3,3))))-transpose(linspace(1,3,3)),2)/norm(transpose(linspace(1,3,3)),inf);
end
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm((generateMatrix(10,in(i))\(generateMatrix(10,in(i))*transpose(linspace(1,10,10))))-transpose(linspace(1,10,10)),2)/norm(transpose(linspace(1,10,10)),inf);
end
hold on;
plot(in,out);
out=zeros(1,size(in,2));
for i =1:size(in,2)
    out(i)=norm((generateMatrix(20,in(i))\(generateMatrix(20,in(i))*transpose(linspace(1,20,20))))-transpose(linspace(1,20,20)),2)/norm(transpose(linspace(1,20,20)),inf);
end
hold on;
plot(in,out)
legend("n=3","n=10","n=20");

