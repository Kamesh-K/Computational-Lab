clc
clear all
syms x
f(x)=x*(16-2*x)*(10-2*x)-100;
x=linspace(0,9,100);
%f(x)=x*x*x-2*x+32*x*x-40
%x=linspace(-34,2,200);
[left,right]=rootrange(f,x);
tol=10^(-12);
n_roots=size(left,2);
x_solve=vpasolve(f);