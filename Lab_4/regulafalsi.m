function [y,y_arr,error_arr]=regulafalsi(f,l,r,tol)
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
    c=l;
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
        val_l=vpa(f(l));
        val_r=vpa(f(r));
        %c=r-(val_r*(r-l)/(val_r-val_l));
        c=l*val_r-r*val_l;
        c=c/(val_r-val_l);
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
    y=c;
end
