function [y,y_arr,error_arr]=regulafalsi(f,l,r,tol)
    error=10000;
    x_solve=vpasolve(f);
    x_solve
    n_solve=size(x_solve,1);
    x_inrange=0;
 %   x_inrange=x_solve(1);
    for i=1:n_solve
        if (x_solve(i) >= l) && (x_solve(i) <=r)
            x_inrange=x_solve(i);
            break;
        end
    end
    mid=l;
    error_arr = [];
    y_arr = [];
    while abs(error) > tol
        val_l=vpa(f(l));
        val_r=vpa(f(r));
        c=r-(val_r*(r-l)/(val_r-val_l));
        y_arr = [y_arr c];
        if f(l)*f(c) < 0
             l=l;
             r=c;
        else 
            l=c;
            r=r;
        end
%        vpa(val_mid)
%        mid
        error = abs(c - x_inrange);
        error_arr = [error_arr error];
%         fprintf('Error %f\n',error);
%         fprintf('Root %f\n',mid);
    end
    y=mid;
end
