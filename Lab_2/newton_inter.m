function [y,p] = newton_inter(x_in,y_in,x1)
if(size(x_in,2)~=size(y_in,2))
       return;
end
n_max=size(x_in,2);
n=n_max;
count=0;
%for n=2:n_max
    d=zeros(n);
    d(1,1:n)=y_in(1:n);
    for i=2:n
        for j=1:n-i+1
        d(i,j)=(d(i-1,j+1)-d(i-1,j))/(x_in(j+1)-x_in(j));
        end
    end
    hold on
    syms x
    p(x)=x^0-1;
    q(x)=x^0;
    p(x)=p(x)+d(1,1);
    for k=1:n-1
        q(x)=q(x)*(x-x_in(k));
        p(x)=p(x)+q(x)*d(k+1,1);
    end
    %figure,
%end
title('Newton Interpolation')
y=eval(p(x1));
%ezplot(p,[4 8]);
%return y;
end
