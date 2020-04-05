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
[y,err_arr_nr]=newton_raphson(f,xo,tol);
fprintf('Rate of convergence - ')
roc(err_arr_nr)
% s='Enter the initial guess for x : ';
% x1=input(s);
% x2=x1+0.1;
s='Enter the second guess for secant : ';
diff=input(s)-xo;
[y,err_arr_sec]=secant_method(f,xo,tol,diff);
fprintf('Rate of convergence - ')
roc(err_arr_sec)
figure,
n1=size(err_arr_nr,2);
n2=size(err_arr_sec,2);
i=1:n2;
semilogy(i,err_arr_sec);
hold on
i=1:n1;
semilogy(i,err_arr_nr);
title('Comparison of NR and Secant method');
xlabel('Number of iterations');
ylabel('True error(Log-Scale)');
legend('Secant Method','Newton-Raphson')