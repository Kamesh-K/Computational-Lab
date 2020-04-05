% Function to calculate the Lagrange Interpolation for the given series 
clc
clear
% Input Variables Y_IN and X_IN are assigned
y_in=[ 1.58740105 1.709976 1.81712059 1.912931 2.000];
x_in = [4:8];
% Size of the X_IN is assigned to n_max
n_max=size(x_in,2);
% Obtaining the value of X to interpolate
s='Enter the value of X to interpolate : ';
x=input(s);
% Ploting the actual function for reference
fplot(@(x) nthroot(x,3),[-2 10],'b-*');
% Running the Newton Interpolation for different polynomials orders
i=1;
for n=2:n_max
%x_in1=x_in(1:n);
%y_in1=y_in(1:n);
hold on;
% Function to choose the X_IN and Y_IN
y(i)=Best_LP(x,x_in,y_in,n);
y(i)=abs(y(i)-x^(1/3));
i=i+1;
%legend('-DynamicLegend');
%hold all;   
%fplot(@(x)lagrange_inter(x,x_in1,y_in1),[4 8],'DisplayName',strcat('Order ',num2str(n)));
%fplot(@(x)lagrange_inter(x,x_in1,y_in1),[4 8]);
end
% Setting the legends and title
% ideal count 5n2-3n+2/2
legend('X^{(1/3)}','P_1(x)','P_2(x)','P_3(x)','P_4(x)','Location','SouthEast')
xlabel('X')
ylabel('Interpolated Y')
title('Lagrange polynomial interpolation')
figure,
i=2:n;
plot(i,y);
xlabel('Order of the polynomial')
ylabel('Relative Error')
title('Lagrange polynomial interpolation')
