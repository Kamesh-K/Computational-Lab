%Matlab script to explain the taylor's series expansion
clc
clear
n=1000;
x=linspace(-2*pi,2*pi,n);

y=sin(x);
for i=1:n
    y1(i)=0;
end
for i=1:10
        y1=y1+((-1)^(i+1))*(x.^i/factorial(i));
    hold on
    plot(x,y1);
end
plot(x,y,'r--')
axis([ -2*pi 2*pi -1 1])