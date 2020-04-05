function [ y_int ] = Gauss3point_h( f,l,u,h)
x=l:h:u;
n=size(x,2);
y_int=0;
for i = 1:n-1
a=x(i);
b=x(i+1);
syms t
t_sub(t) = 0.5*(b-a)*t + (0.5 )*(b+a);
g(t)=f(t_sub);
point=sqrt(3)/sqrt(5);
y_int_step=((5/9)*(g(-1*point)+g(point)))+((8/9)*g(0));
vpa(y_int_step)
y_int=y_int+vpa(y_int_step);
end
end

