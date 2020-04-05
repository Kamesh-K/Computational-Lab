clc
clear all
close all
f = @(x) sin(2*pi*x) + sin(4*pi*x);
c = sqrt(4);
a = 1;
b = 1;
n = 10;
m = 20;
h = a/(n-1);
k = b/(m-1);
