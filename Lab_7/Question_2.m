clc
clear all
x=1;
t=0.1;
h=0.1;
k=0.01;
alpha=0.8;
size_x=1+x/h;
size_t=1+t/k;
T=zeros(size_x,size_t);
T_initial=zeros(size_x,size_t);
x=0:0.1:1;
for i=2:size_x-1
    T_initial(i,1)=3-abs(3*(x(i))-1)-abs(3*x(i)-2);
end
T(:,1)=T_initial(:,1);
[T_time] = ftcs(T,size_x,size_t,alpha);
surfc(T_time);
title('FTCS Method')
figure,
tol_max=10^(-8);
r=alpha/4;
for i = 1:10
T_X=CN(T(:,i),size_x,size_t,r,tol_max);
T(:,i+1)=T_X;
end
T=T(:,1:10);
surfc(T)
title('Crank-Nicholson Method')