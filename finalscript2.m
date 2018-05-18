close all;
%task1/2
N =[5,10,15];
for k =N
figure;
x=linspace(-1,1,1001);
y=linspace(-1,1,1001);
for i =1:1001
   y(i)=cos(pi*x(i))*exp(x(i)); 
end
plot(x,y);
for i =1:k
   hold on;
   t=calculatePrime(i,k);
   l=cos(pi*t)*exp(t); 
   plot(t,l,'*r');
    
end
axis([-1,1,-1,2]);
hold on;
coeficients=findCoeficients(k,k-1,0);
for i =1:size(x,2)
y(i)=calculateValue(coeficients,x(i),k-1);
end
plot(x,y);
title("k="+(k-1)+" n="+k);
hold off;
end

%%create animated plot
figure
for n = 1:15
    for k =1:n
        clf;
        x=linspace(-1,1,1001);
        yEx=linspace(-1,1,1001);
        for i =1:1001
            yEx(i)=cos(pi*x(i))*exp(x(i)); 
        end
        plot(x,yEx);
        for i =1:n
            hold on;
            t=calculatePrime(i,n);
            l=cos(pi*t)*exp(t); 
            plot(t,l,'*r');
    
        end
        axis([-1,1,-1,2]);
        hold on;
        coeficients=findCoeficients(n,k,0);
        for i =1:size(x,2)
            y(i)=calculateValue(coeficients,x(i),k);
        end
        plot(x,y);
        t=norm(y-yEx,2)/norm(yEx,2);
        title("k="+k+" n="+n+" infNorm error="+num2str(t));
        pause(.8);
    end
end


%task3
result = zeros(30,30);
for n = 1:30
    for k= 1:n
        aproximation=linspace(-1,1,1001);
        coeficients=findCoeficients(n,k,0);
        for i = 1:1001
            aproximation(i)=calculateValue(coeficients,aproximation(i),k);
        end
        value = linspace(-1,1,1001);
        for i = 1:1001
            value(i)=cos(pi*value(i))*exp(value(i));
        end
        result(n,k) = norm(aproximation-value,2)/norm(value,2);
    end
end
figure;
mesh(1:30,1:30,result);
title("dependence of 2norm error on n and k");


result = zeros(30,30);
for n = 1:30
    for k= 1:n
        aproximation=linspace(-1,1,1001);
        coeficients=findCoeficients(n,k,0);
        for i = 1:1001
            aproximation(i)=calculateValue(coeficients,aproximation(i),k);
        end
        value = linspace(-1,1,1001);
        for i = 1:1001
            value(i)=cos(pi*value(i))*exp(value(i));
        end
        result(n,k) = norm(aproximation-value,inf)/norm(value,inf);
    end
end
figure;
mesh(1:30,1:30,result);
title("dependence of inf error on n and k");
%task4

sigma = 100;
result = zeros(30,30);
for n = 1:30
    for k= 1:n
        aproximation=linspace(-1,1,1001);
        coeficients=findCoeficients(n,k,sigma);
        for i = 1:1001
            aproximation(i)=calculateValue(coeficients,aproximation(i),k);
        end
        value = linspace(-1,1,1001);
        for i = 1:1001
            value(i)=cos(pi*value(i))*exp(value(i));
        end
        result(n,k) = norm(aproximation-value,2)/norm(value,2);
    end
end
figure;
mesh(1:30,1:30,result);
title("dependence of 2norm error on n and k with sigma="+sigma);

sigma = 100;
result = zeros(30,30);
for n = 1:30
    for k= 1:n
        aproximation=linspace(-1,1,1001);
        coeficients=findCoeficients(n,k,sigma);
        for i = 1:1001
            aproximation(i)=calculateValue(coeficients,aproximation(i),k);
        end
        value = linspace(-1,1,1001);
        for i = 1:1001
            value(i)=cos(pi*value(i))*exp(value(i));
        end
        result(n,k) = norm(aproximation-value,inf)/norm(value,inf);
    end
end
figure;
mesh(1:30,1:30,result);
title("dependence of infnorm error on n and k with sigma="+sigma);

%task 4
y=linspace(-1,1,1001);
x=y;
yexact=y;
t=0;
for sigma = linspace(0,100,1001)
    t=t+1;
    coeficients=findCoeficients(15,10,sigma);
    for i = 1:1001
       y(i)= calculateValue(coeficients,x(i),10);
    end
    for i = 1:1001
        yexact(i)=cos(pi*x(i))*exp(x(i));
    end
    error(t)=norm(y-yexact,inf)/norm(yexact,inf);
end
plot(linspace(0,100,1001),error);
title("dependence of infnorm error sigma");





y=linspace(-1,1,1001);
x=y;
yexact=y;
error;
figure;
t=0;
for sigma = linspace(0,100,1001)
    t=t+1;
    coeficients=findCoeficients(15,10,sigma);
    for i = 1:1001
       y(i)= calculateValue(coeficients,x(i),10);
    end
    for i = 1:1001
        yexact(i)=cos(pi*x(i))*exp(x(i));
    end
    error(t)=norm(y-yexact,2)/norm(yexact,2);
end
plot(linspace(0,100,1001),error);
title("dependence of 2norm error sigma");
