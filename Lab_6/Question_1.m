syms y
syms t
F=@(t,y) [10*(y(2)-y(1));25*y(1)-y(2)-(y(1)*y(3));(y(1)*y(2))-((8/3)*y(3))]
h=0.01;
a=0;
b=100;
err=10;
tol=10^-6;
Za=[3 3 20];
M=(b-a)/h;
tic
opts=odeset('RelTol',10^-6,'AbsTol',10^-6);
[t,y]=ode45(F,[0:0.1:1],[0;0.5],)
tic 
[t,y] = ode45(F,[0:h:100],[3;3;20],opts);
timeode45=toc
plot3(y(:,1),y(:,2),y(:,3))
%figure,
hold on
tic
[t1,y1] = RK4(F,0,100,Za,h);
timeRK45=toc 
plot3(y1(:,1),y1(:,2),y1(:,3))
tic 
[t,y_113] = ode113(F,[0:h:100],[3;3;20],opts);
timeode113=toc
plot3(y_113(:,1),y_113(:,2),y_113(:,3))
legend('ODE45','RK4','ODE113')
