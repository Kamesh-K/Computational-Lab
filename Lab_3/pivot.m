function [P,B]=pivot(A)
n=size(A,1);
P=eye(n);
for i=1:n
    for j=i+1:n
        if abs(A(j,i))>abs(A(i,i))
            temp=A(j,:);
            A(j,:)=A(i,:);
            A(i,:)=temp;
            temp=P(j,:);
            P(j,:)=P(i,:);
            P(i,:)=temp;
        end
    end
end
B=A;
end