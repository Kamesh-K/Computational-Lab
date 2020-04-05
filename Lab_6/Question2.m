clc;
clear;
F = @(t,y) sin(t)*(y^2-cos(t)^2-1);
g = @(t) cos(t);
a = 0;
b = 50;

tfinal = 50.0;
h = 1;
h_vec = [];
error_vec = [];
t0 = 0;
y0 = 1;
F0 = vpa(F(t0,y0));
for i=1:4
    t_vec = [t0];
    y_vec = zeros(size(F0,1),1);
    y_vec(:,1) = y0;
    y = y0;
    t = t0;
    m = (tfinal - t0)/h;
    for j = 1:m 
        k1 = F(t,y);    
        k2 = F(t+h/2,y+k1*h/2);
        k3 = F(t+h/2,y+k2*h/2);
        k4 = F(t+h,y+k3*h);
        k_mean = (k1+2*k2+2*k3+k4)/6;
        y = y + k_mean * h;
        t = t + h;
        t_vec = [t_vec t];
        y_vec = [y_vec y];
    end
    error = abs(y - vpa(g(tfinal)));
    h_vec = [h_vec h];
    h = h/10;
    error_vec = [error_vec error];
end
error_vec
h_vec
xlabel('Step Size')
ylabel('Error')
loglog(h_vec,error_vec,'-x');
set ( gca, 'xdir', 'reverse' )


h = 1;
h_vec = [];
error_vec = [];
for i=1:4
    t_vec = [t0];
    y_vec = zeros(size(F0,1),1);
    y_vec(:,1) = y0;
    y = y0;
    t = t0;
    m = (tfinal - t0)/h;
    for j = 1:m 
        k_mean = F(t,y);
        y = y + k_mean * h;
        t = t + h;
        t_vec = [t_vec t];
        y_vec = [y_vec y];
    end
    error = abs(y - vpa(g(tfinal)));
    h_vec = [h_vec h];
    h = h/10;
    error_vec = [error_vec error];
end
h_vec
error_vec 
hold on
loglog(h_vec,error_vec,'-o');
legend('RK4','Euler')
set ( gca, 'xdir', 'reverse' )


% h = 1;
% h_vec = [];
% error_vec = [];
% for i=1:4
%     t_vec = [t0];
%     y_vec = zeros(size(F0,1),1);
%     y_vec(:,1) = y0;
%     y = y0;
%     t = t0;
%     m = (tfinal - t0)/h;
%     for j = 1:m 
%         h = @(x) x - y - F(t+h,x) * h;
%         y = newton_raphson(h,0,10^-6);
%         t = t + h;
%         t_vec = [t_vec t];
%         y_vec = [y_vec y];
%     end
%     error = abs(y - vpa(g(tfinal)));
%     h_vec = [h_vec h];
%     h = h/10;
%     error_vec = [error_vec error];
% end
% 
% hold on
% loglog(h_vec,error_vec,'-o');
% legend('RK4','Euler','Backward Euler')
% set ( gca, 'xdir', 'reverse' )