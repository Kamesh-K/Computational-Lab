f= @(t,y)(sin(t)*(y^2-((cos(t))^2)-1));
n_max=4;
h=ones(n_max,1);
err=[];
max_b=50.5;
y_act_b=cos(max_b);
err_rk=[];
err_eu=[];
err_45=[];
plt_h=[];
for i = 0:n_max
    h=10^(-1*i);
    plt_h=[plt_h h];
    [y,t]=euler_explicit(f,0,max_b,1,h);
    [t_rk,y_rk]=RK4(f,0,max_b,1,h);
    n_size=size(y,1);
    err_eu=[err_eu abs(y(n_size)-y_act_b)];
    n_size=size(y_rk,1);
    err_rk=[err_rk abs(y_rk(n_size)-y_act_b)];
    [t_45,y_45]=ode45(f,[0:h:max_b],1);
    n_size=size(y_45,1);
    err_45=[err_45 abs(y_45(n_size)-y_act_b)];
end
loglog(plt_h,err_eu)
hold on;
loglog(plt_h,err_rk)
loglog(plt_h,err_45)
legend('Error Euler','Error RK4','Error ODE45')
set(gca,'xdir','reverse')
h=10^(-1*n_max);
plt_h=[plt_h h];
[y,t]=euler_explicit(f,0,max_b,1,h);
[t_rk,y_rk]=RK4(f,0,max_b,1,h);
n_size=size(y,1);
err_eu=[err_eu abs(y(n_size)-y_act_b)];
n_size=size(y_rk,1);
err_rk=[err_rk abs(y_rk(n_size)-y_act_b)];
[t_45,y_45]=ode45(f,[0:h:max_b],1);
n_size=size(y_45,1);
err_45=[err_45 abs(y_45(n_size)-y_act_b)];
        