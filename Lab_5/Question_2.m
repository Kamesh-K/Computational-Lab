clc 
clear all
syms x
f(x)=1/(1+(x*x));
%h=[1 0.5 0.25 0.1 0.05 0.01];
h=[3 2 1 0.5 0.1];
size_h=size(h,2);
a=-3;
b=3;
int_val_CT=zeros(size_h,1);
err_val_CT=zeros(size_h,1);
integral_val=vpa(int(f,a,b));
for i=1:size_h
    int_val_CT(i)=CompTrap(f,a,b,h(i));
    err_val_CT(i)=abs(int_val_CT(i)-integral_val);
end
fprintf('COMP TRAP DONE !\n')
int_val_SM=zeros(size_h,1);
err_val_SM=zeros(size_h,1);
integral_val=vpa(int(f,a,b));
for i=1:size_h
    int_val_SM(i)=Simpson(f,a,b,h(i));
    err_val_SM(i)=abs(int_val_SM(i)-integral_val);
end
fprintf('SIMPSON DONE !\n')
int_val_GP2=zeros(size_h,1);
err_val_GP2=zeros(size_h,1);
for i=1:size_h
    int_val_GP2(i)=Gauss2point(f,a,b,h(i));
    err_val_GP2(i)=abs(int_val_GP2(i)-integral_val);
end
fprintf('GAUSS 2 POINT DONE !\n')
int_val_GP3=zeros(size_h,1);
err_val_GP3=zeros(size_h,1);
integral_val=vpa(int(f,a,b));
for i=1:size_h
    int_val_GP3(i)=Gauss3point(f,a,b,h(i));
    err_val_GP3(i)=abs(int_val_GP3(i)-integral_val);
end
fprintf('GAUSS 3 POINT DONE !')
px=1:size_h;
loglog(h,err_val_CT);
hold on 
loglog(h,err_val_SM);
loglog(h,err_val_GP2);
loglog(h,err_val_GP3);
legend('Trapezoidal','Simson','Gauss-2-Point','Gauss-3-Point','Location','Best')
set ( gca, 'xdir', 'reverse' )
xlabel('Value of h')
ylabel('Log error')
title('Comparison of different methods');


