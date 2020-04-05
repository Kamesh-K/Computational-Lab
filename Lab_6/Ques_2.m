clc
f= @(t,y)(sin(t)*(y^2-((cos(t))^2)-1));
n_max=4;
h=ones(n_max,1);
err=[];
y_act=cos(t);
y_act_b=cos(50);
err_rk=[];
err_eu=[];
plt_h=[];
for i = 1:n_max
    h=10^(-1*i);
    plt_h=[plt_h h];
    [y,t]=euler_explicit(f,0,50,1,h);
    [t_rk,y_rk]=RK4(f,0,50,1,h);
    n_size=size(y,1);
    err_eu=[err_eu y(n_size)];
    n_size=size(y_rk,1);
    err_rk=[err_rk y_rk(n_size);
end
loglog(plt_h,err_rk);
set(gca,'xdir','reverse');
