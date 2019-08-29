function [y]= gauss_siedel(A,b,x)
    n=size(A,2);
    temp=zeros(n,1);
    tolerance=10^3;
    iter=0;
    while tolerance>exp(-12),
    for i=1:n
        temp(i)=b(i);
        for j=1:n
        if(i~=j)
        temp(i)=temp(i)-A(i,j)*x(j);
        end
        end
        x(i)=temp(i)/A(i,i);
        temp(i)=x(i);
    end
    tolerance=0;
    for i=1:n
        tolerance=tolerance+abs((temp(i)-x(i))/x(i));
    end
    x
    iter=iter+1;
    end
    y=x;
    vpa(y)
end