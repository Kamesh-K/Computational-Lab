function [ y_int ] = Simpson( f,a,b,h)
    y_int=0;
    x=a:h:b;
    n=size(x,2);
    f_val=f(x);
    for i=1:n-1
    y_int=y_int+vpa((h/6)*(f_val(i)+4*f((x(i)+x(i+1))/2)+f_val(i+1)));
    end
end


