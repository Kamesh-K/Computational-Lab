function [t,y1] = RK4(f,a,b,za,h)
n=(b-a)/h;
x=a;
k1=za';
y=za';
k2=(f(x+(h/2),y+(k1*h/2)));
k3=(f(x+(h/2),y+(k2*h/2)));
k4=(f(x+(h),y+(k3*h)));
k_mean=(k1+2*k2+2*k3+k4)/6;
y1=[];
t=[];
y=k_mean*h+y;
t=[t;x];
y1 = [y1;y'];
x=x+h;
for i = 2:n+1
    k1=f(x,y);
    k2=(f(x+(h/2),y+(k1*h/2)));
    k3=(f(x+(h/2),y+(k2*h/2)));
    k4=(f(x+(h),y+(k3*h)));
    k_mean=(k1+2*k2+2*k3+k4)/6;
    y=k_mean*h+y;
    t=[t;x];
    y1 = [y1;y'];
    x=x+h;
    %i
end
y=vpa(y);
end

