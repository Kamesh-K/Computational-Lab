function [ T_X ] = CN(T,size_x,size_t,r,tol_max)
T_CN=zeros(size_x,size_t);
T_A=zeros(size_x,size_x);
for i=1:size_x-2
    T_A(i,i)=-r;
    T_A(i,i+1)=(1+2*r);
    T_A(i,i+2)=-r;
end
A=zeros(size_x,size_x);
for i=1:size_x-1
A(i+1,:)=T_A(i,:);
end
T_A=T_A(1:size_x-2,1:size_x);
b=zeros(size_x,1);
b(1)=0;
b(size_x)=0;
for i = 2:size_x-1
    b(i)=r*T(i+1)+(1-2*r)*T(i)+r*T(i-1);
end
A(1,1)=1;
A(size_x,size_x)=1;
T_X=zeros(size_x,1);
[T_X,err]=gauss_siedel_2(A,b,T_X,tol_max);
end

