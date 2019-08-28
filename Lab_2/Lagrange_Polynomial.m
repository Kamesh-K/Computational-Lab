clc
clear
y_in=[ 1.58740105 1.709976 1.81712059 1.912931 2.000];
x_in = [4:8];
n_max=size(x_in,2);
s='Enter the value of X to interpolate : ';
x=input(s);
fplot(@(x) nthroot(x,3),[-2 10],'b-*');
for n=2:n_max
%x_in1=x_in(1:n);
%y_in1=y_in(1:n);
hold on;
Best_LP(x,x_in,y_in,n);
%legend('-DynamicLegend');
%hold all;   
%fplot(@(x)lagrange_inter(x,x_in1,y_in1),[4 8],'DisplayName',strcat('Order ',num2str(n)));
%fplot(@(x)lagrange_inter(x,x_in1,y_in1),[4 8]);
end
legend('X^{(1/3)}','P_1(x)','P_2(x)','P_3(x)','P_4(x)','Location','SouthEast')
xlabel('X')
ylabel('Interpolated Y')
title('Lagrange polynomial interpolation')