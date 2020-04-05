function [b_diff, err_diff] = backward_diff(f,a,b,h)
    x=a:h:b;
    b_val=f(x);
    n=size(b_val,2);
    df=diff(f);
    df_act=df(x);
    b_diff=zeros(n-1,1);
    err_diff=zeros(n-1,1);
    for i=2:n
       b_diff(i-1)=(b_val(i)-b_val(i-1))/h;
       err_diff(i-1)=abs(b_diff(i-1)-df_act(i));
    end
end

