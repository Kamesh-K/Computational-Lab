function [L,U,P] = ludecomp(A)
[P,A]=pivot(A);
n=size(A,1);
lower=zeros(n,n);
upper=zeros(n,n);
for i=1:n
    for k=i:n
        sum=0;
        for j=1:i
            sum=sum+lower(i,j)*upper(j,k);
            upper(i,k)=A(i,k)-sum;
        end
    end
    for k=i:n
        if i==k
            lower(i,i)=1;
        else
            sum=0;
            for j=1:i
                sum=sum+lower(k,j)*upper(j,i);
            end
                lower(k,i)=(A(k,i)-sum)/upper(i,i);
        end
    end
end
L=lower;
U=upper;
end

