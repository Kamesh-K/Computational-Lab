function [P,B]=pivot(A)
n=size(A,1);
P=eye(n);
for i=1:n
    max_indx=i;
    max_val=abs(A(i,i));
    for j=i+1:n
        if max_val<abs(A(j,i))
            max_indx=j;
            max_val=abs(A(j,i));
        end
    end
    temp=A(max_indx,:);
    A(max_indx,:)=A(i,:);
    A(i,:)=temp;
    temp=P(max_indx,:);
    P(max_indx,:)=P(i,:);
    P(i,:)=temp;
end
B=A;
end