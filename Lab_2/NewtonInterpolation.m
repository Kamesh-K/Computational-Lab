function [y,d] = newton_inter(x_in,y_in,x)
if(size(x_in,2)~=size(y_in,2))
       return;
end
n=x_in(size,2);
mat=zeroes(n);
mat(1:n)=x_in(1:n);
mat(2:n)=x_in(1:n);
mat
end
