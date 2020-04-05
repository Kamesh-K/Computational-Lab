function y=Best_LP(x,x_in,y_in,n)
% Sliding window approach is used to find the best possible curve fitting
% through the polynomials
N_max=size(x_in,2);
best=x^(1/3);
x_best=x_in;
y_best=y_in;
%for i=1:N_max-n
%    x_1=x_in(i:i+n-1);
%    y_1=y_in(i:i+n-1);
%     fun_calc=lagrange_inter(x,x_1,y_1);
%     if abs(fun_calc-x^(1/3))< best
%         best=abs(fun_calc-x^(1/3));
%         x_best=x_1;
%         y_best=y_1;
%     end
% end
iter=1:N_max;
combi=combntns(iter,n);
C_max=size(combi,1);
count=0;
for i=1:C_max
    x_1=x_in(combi(i,:));
    y_1=y_in(combi(i,:));
    [fun_calc,l,count]=lagrange_inter(x,x_1,y_1);
    if abs(fun_calc-x^(1/3))< best
        best=abs(fun_calc-x^(1/3));
        x_best=x_1;
        y_best=y_1;
    end
end
count
%legend('-DynamicLegend');
fplot(@(x)lagrange_inter(x,x_best,y_best),[-2 10],'--');
%fplot(@(x)lagrange_inter(x,x_best,y_best),[4 8],'DisplayName',strcat('P_',num2str(n)));
y=lagrange_inter(x,x_best,y_best);
hold on 
%plot(x,lagrange_inter(x,x_best,y_best),'r*');
x_best
%y_best
end