function [y,y_arr,error_arr]=bisection(f,l,r,tol)
    error=10000;
    x_solve=vpasolve(f);
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
%     if vpa(f(l)) == 0 
%         y=l;
%         error_arr=[0];
%         return;
%     end
%     if vpa(f(r)==0)
%         y=r;
%         error_arr=[0];
%         return;
%     end
    while abs(error) > tol
        mid=(l+r)/2;
        val_mid=vpa(f(mid));
        val_l=vpa(f(l));
        val_r=vpa(f(r));
        y_arr = [y_arr mid];
        if f(l)*f(mid) < 0
             l=l;
             r=mid;
        else 
            l=mid;
            r=r;
        end
%        vpa(val_mid)
%        mid
        error = abs(mid - x_inrange);
        error_arr = [error_arr error];
%         fprintf('Error %f\n',error);
%         fprintf('Root %f\n',mid);
    end
    y=vpa(mid);
end
