function [f_diff, err_diff] = forward_diff(f,a,b,h)
    x=a:h:b;
    f_val=f(x);
    n=size(f_val,2);
    df=diff(f);
    df_act=df(x);
    for i=1:n-1
       f_diff(i)=(f_val(i+1)-f_val(i))/h;
       err_diff(i)=abs(f_diff(i)-df_act(i));
    end
end

