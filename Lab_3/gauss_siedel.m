function [y,tol]= gauss_siedel(A,b,x,tol_max)
    n=size(A,2);
    temp=zeros(n,1);
    tolerance=10^3;
    iter=0;
    tol=[];
    while tolerance>tol_max
    x_old=x;
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
        tolerance=tolerance+abs((temp(i)-x_old(i))/temp(i));
    end
    tol=[tol tolerance];
    iter=iter+1;
    end
    y=x;
    vpa(y,3);
end