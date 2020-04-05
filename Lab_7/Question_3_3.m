clc
clear all
f = @(x) exp(-(x-0.5)^2);
c = 2;
a = 1;
b = 1;
r = 0.2;
h=0.05;
n = 1+a/h;
k = r*h/c;
m = ceil(1+b/k);
[wave]=wave_equation_pp(f,h,r,n,m);
x = 0:h:a;
t = 0:k:b;
figure
surf(x,t,wave)
wave_initial=wave(1,:);
title('Wave Equation')
xlabel('x')
ylabel('t')
zlabel('Amplitude')
shading interp
for i=1:201
    wave_frame=wave(i,:);
    plot(x,wave_frame);
    pause(1);
end
