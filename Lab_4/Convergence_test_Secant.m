clc
clear all
syms x
clc
clear all
syms x
f(x)=x*(16-2*x)*(10-2*x)-100;
%f(x)=((sin(6*x))^2)*((x-1)^6)+1;
%f(x)=(x^5)*sin(5*x);
%f(x)=(x^10)-1
s='Enter the initial guess for x : ';
xo=input(s);
tol=10^(-12);
x_sol=vpasolve(f);
df_sol=vpasolve(diff(f));

f(x)=x*(16-2*x)*(10-2*x)-100;
x=linspace(0,9,100);
%f(x)=x*x*x-2*x+32*x*x-40
%x=linspace(-34,2,200);
[left,right]=rootrange(f,x);
tol=10^(-12);
n_roots=size(left,2);
x_solve=vpasolve(f);
x_range=linspace(x_solve(1)-3,x_solve(2)+1,5);
x_comb=combnk(x_range,2);
iter=0;
n_size=size(x_comb,1);
roc_comb=[];
y_sol=[];
while iter < n_size
    iter = iter+1;
    diff=x_comb(iter,2)-x_comb(iter,1);
    hold on;
    [y,err_arr_sec]=secant_method(f,x_comb(1,1),tol,diff);
    y_sol=[y_sol y];
    roc_comb=[roc_comb roc(err_arr_sec)]
end