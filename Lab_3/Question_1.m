clear all
clc
A=[3 -0.1 -0.2; 0.1 7 -.3; 0.3 -.2 10];
b=[7.85; -19.3;71];
tol=(10)^(-12);
x=zeros(3,1);
y=jacobi(A,b,x,tol)