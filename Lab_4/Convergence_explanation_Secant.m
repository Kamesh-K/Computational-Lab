clc
clear all
syms x
f(x)=x*(16-2*x)*(10-2*x)-100;
%f(x)=((sin(6*x))^2)*((x-1)^6)+1;
%f(x)=(x^5)*sin(5*x);
%f(x)=(x^10)-1
s='Enter the initial guess for x : ';
xo=input(s);
s='Enter the second guess for x : ';
x1=input(s);
tol=10^(-12);
x_sol=vpasolve(f);
iter_max=1000;
x_1=xo;
i=0;
error = 1;
err_arr = [];
iter_max=100;
iter=0;
x_2=x1;
fplot(f,[xo x1])
    while error > tol
        val_x1=vpa(f(x_1));
        val_x2=vpa(f(x_2));
        X_figure=[x_1;x_2];
        Y_figure=[val_x1;val_x2];
        hold on;
        plot(X_figure,Y_figure,'-r*');
        x_3= val_x2*x_1 - val_x1*x_2;
        x_3= x_3/(val_x2-val_x1);
        error=abs(x_3-x_2);
        x_1=x_2;
        x_2=x_3;
        err_arr = [err_arr error];
        iter=iter+1;
        if iter == iter_max
            break;
        end 
        pause(3);
    end
    fprintf('Solution obtained through Secant-Method = ')
    y=x_2;
    y
    n_err=size(err_arr,2);
    i=1:n_err;
    figure,
    semilogy(i,err_arr,'*-');
    xlabel('Number of Iterations');
    ylabel('True Error');
    title('Secant Method')
    legend('Error Value')
    y=x_2;
