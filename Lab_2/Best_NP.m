function y=Best_NP(x,x_in,y_in,n)
N_max=size(x_in,2);
best=x^(1/3);
x_best=x_in;
y_best=y_in;
iter=1:N_max;
combi=combntns(iter,n);
C_max=size(combi,1);
%combi
count=0;
for i=1:C_max
    x_1=x_in(combi(i,:));
    y_1=y_in(combi(i,:));
    fun_calc=newton_inter(x_1,y_1,x);
    if abs((fun_calc-x^(1/3))/x^(1/3))< best
        best=abs(fun_calc-x^(1/3));
        [fun_calc,p,count]=newton_inter(x_1,y_1,x);
        x_best=x_1;
        y_best=y_1;
    end
end
count=(5*n^2-3*n-2)/2;
count
x_best
%fplot(@(x)newton_inter(x_best,y_best,x),[-2 10],'--');
hold on
y=newton_inter(x_best,y_best,x);
ezplot(p,[4 8]);
%title('Newton Polynomial');
end