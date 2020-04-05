F = @(t,y) [10*(y(2)-y(1)); 25*y(1)-y(2)-(y(1)*y(3)); (y(1)*y(2))-(8/3)*y(3)];

tfinal = 100;
h = 0.01;

t0 = 0;
y0 = [3;3;20];
F0 = vpa(F(t0,y0));

t_vec = [t0];
y_vec = zeros(size(F0,1),1);
y_vec(:,1) = y0;
y = y0;
t = t0;
m = (tfinal-t0)/h;
for i = 1:m
    k1 = F(t,y);
    k2 = F(t+h/2,y+k1*h/2);
    k3 = F(t+h/2,y+k2*h/2);
    k4 = F(t+h,y+k3*h);
    k_mean = (k1+2*k2+2*k3+k4)/6;
    y = y + k_mean * h;
    t = t + h;
    t_vec = [t_vec t];
    y_vec = [y_vec y];
    i
end
y_vec(:,2:end)=vpa(y_vec(:,2:end));
plot3(y_vec(1,:),y_vec(2,:),y_vec(3,:));