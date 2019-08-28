function [y,L,count]=lagrange_inter(x,x_in,y_in)
if(size(x_in,2)~= size(y_in,2))
    return;
end
count=0;
n=size(x_in,2);
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
    denom=denom*(x_in(i)-x_in(j));
    end
    L(i)=numerator/((x-x_in(i))*(denom));
    count=count+3;
end
y_temp=L*y_in';
y=y_temp;
count=count+n*2;
end
