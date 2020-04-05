syms y
syms t
F=@(t,y) [-(4*y(2))+y(1)*(4-y(1)*y(1)-y(2)*y(2));4*y(1)+y(2)*((4-y(1)*y(1)-y(2)*y(2)))];
h=0.01;
a=0;
b=10;
err=10;
tol=10^-6;
Za=[0.5 0];
M=(b-a)/h;
tic
opts=odeset('RelTol',10^-6,'AbsTol',10^-6);
%figure,
hold on
tic
[t_in,y_in] = RK4(F,0,100,Za,h);
timeRK45=toc;
plot(y_in(:,1),y_in(:,2))
Za=[3 2];
M=(b-a)/h;
tic
opts=odeset('RelTol',10^-6,'AbsTol',10^-6);
%figure,
hold on
tic
[t_out,y_out] = RK4(F,0,100,Za,h);
timeRK45=toc;
plot(y_out(:,1),y_out(:,2))
Za=[2 0]; 
M=(b-a)/h;
tic
opts=odeset('RelTol',10^-6,'AbsTol',10^-6);
%figure,
hold on
tic
[t_on,y_on] = RK4(F,0,100,Za,h);
timeRK45=toc;
plot(y_on(:,1),y_on(:,2))
legend('Inside','Outside','On the circle')
figure,
n_size=size(t_in,1);
for i=1:n_size-1
    plot3(t_in(i:i+1),y_in(i:i+1,1),y_in(i:i+1,2),'b-*');
    pause(0.001);
    hold on
end
