function [c_diff, err_diff] = central_diff(f,a,b,h)
    x=a:h:b;
    f_val=f(x);
    n=size(f_val,2);
    df=diff(f);
    df_act=df(x);
    for i=2:n-1
       c_diff(i-1)=(f_val(i+1)-f_val(i-1))/(2*h);
       err_diff(i-1)=abs(c_diff(i-1)-df_act(i));
    end
end

