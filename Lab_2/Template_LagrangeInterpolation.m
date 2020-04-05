function [y,L]=lagrange_inter(x,x_in,y_in)
% x_in y_in are the number of points that are given.
% x_in, y_in vector size need to be same. size(x_in,2)= size(y_in,2)
% x is the point at which interpolated y value should be calculated
% Create Lagrange coefficents as a matrix/array with dimensions % of N (order of the polynomial) * size(x,2) 
% In this way, each column represents Lagrange coeff.
% multiply elements of column with given y_in
% sum them all to find y
% y =y1*L1+y2*L2+....yn*Ln
if(size(x_in,2)~= size(y_in,2))
    fprintf('Error the input value is wrong !!\n');
    return;
end
L(1:size(x_in,2))=0;
numerator=1;
for i=1:n
    numerator=numerator*(x-x_in(i));
end
for i=1:n
    denom=1;
    for j=1:n
    if i==j
        continue;
    end
    denom=denom*(x(i)-x(j));
    end
    L(i)=numerator/((x-x_in(i))*(denom));
end
y_temp=L'*y_in;
y=0;
for i=1:n
    y=y+L(i);
end
end
