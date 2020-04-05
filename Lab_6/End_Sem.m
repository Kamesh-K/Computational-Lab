F=@(t,y)[-3*y(1)+2*y(2);3*y(1)-4*y(2)];
opts=odeset('RelTol',10^-6,'AbsTol',10^-6);
[t,y]=ode45(F,[0:0.1:1],[0;0.5],opts);