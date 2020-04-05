function [ y_int ] = Gauss2point( f,l,u,h)
x=l:h:u;
n=size(x,2);
y_int=0;
for i = 1:n-1
a=x(i);
b=x(i+1);
syms t
t_sub(t) = 0.5*(b-a)*t + (0.5 )*(b+a);
g(t)=f(t_sub);
point=1/sqrt(3);
y_int_step=g(-1*point)+g(point);
y_int_step=0.5*((b-a))*vpa(y_int_step);
y_int=y_int+vpa(y_int_step);
end
end

