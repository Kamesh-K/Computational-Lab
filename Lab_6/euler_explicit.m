function [ y_1,t] = euler_explicit( f,a,b,za,h )
t = [a:h:b];
n=size(t,2);
y_1=zeros(n,1);
t=zeros(n,1);
y_1(1)=za;
t(1)=0;
for i=1:n-1
    y_1(i+1)=y_1(i)+h*f(t(i),y_1(i));
    t(i+1)=t(i)+h;
end
end

