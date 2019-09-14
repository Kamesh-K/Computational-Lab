function [y,err_arr]=secant_method(f,x_1,tol)
    iter_max=1000;
    i=0;
    error = 1;
    err_arr = [];
    iter_max=100        ;
    iter=0;
    x_2=x_1+0.001;  
    while error > tol
        val_x1=vpa(f(x_1));
        val_x2=vpa(f(x_2));
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
end
