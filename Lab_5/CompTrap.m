function [y_int] = CompTrap(f,a,b,h)
    y_int=0;
    x=a:h:b;
    f_val=f(x);
    n=size(f_val,2);
    for i = 1:n-1
        y_int = y_int + (h/2)*(f_val(i)+f_val(i+1));
    end
    y_int=vpa(y_int);
end

