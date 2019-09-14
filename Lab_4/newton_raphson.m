function [y,err_arr]=newton_raphson(f,xo,tol)
    syms x
    df(x)=diff(f);
    error = 1;
    err_arr = [];
    iter_max=1000;
    iter=0;
    while error > tol
        val_f=vpa(f(xo));
        val_df=vpa(df(xo));
        x_1=xo-(val_f/val_df);
        error=abs(xo-x_1);
        xo=x_1;
        err_arr = [err_arr error];
        iter=iter+1;
        if iter == iter_max
            break;
        end 
    end
    fprintf('Solution obtained through Newton-Raphson = ')
    y=x_1;
    y
    figure,
    n_err=size(err_arr,2);
    i=1:n_err;
    semilogy(i,err_arr,'*-');
    xlabel('Number of Iterations');
    ylabel('True Error');
    title('Newton-Raphson Method')
    legend('Error Value')
end
