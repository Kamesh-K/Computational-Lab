function [y]= jacobi(A,b,x)
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
        temp(i)=temp(i)/A(i,i);
    end
    tolerance=0;
    for i=1:n
        tolerance=tolerance+abs((temp(i)-x(i))/x(i));
    end
    x=temp;
    iter=iter+1;
    end
    iter
    y=x;
end