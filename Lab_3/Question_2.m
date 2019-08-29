clear all
clc
digits(3);
A=[1 1/2 1/3 1/4; 1/2 1/3 1/4 1/5; 1/3 1/4 1/5 1/6; 1/4 1/5 1/6 1/7];
b=[25/12;77/60;57/60;319/420];
tol=(10)^(-12);
n=size(A,2);
x=ones(n,1);
y=gauss_siedel(A,b,x);
vpa(y)