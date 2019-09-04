syms x
f(x)=x*(16-2*x)*(10-2*x)-100;
x=linspace(0,9,100);
[low,right]=rootrange(f,x);
tol=exp(-20);
n_roots=size(low,2);
legend_mat=[];
for i=1:n_roots
    l=low(i);
    r=right(i);
    [y,y_arr,error_arr]=bisection(f,l,r,tol);
    n_error=size(error_arr,2);
    p_x=1:n_error;
    hold on
    semilogy(p_x,error_arr);
    y
    title('Error plot for B isection method');
    xlabel('Number of iterations')
    ylabel('Semi-Log error')
    legend_mat=[legend_mat; strcat('Root-',num2str(i))];
    %legend(strcat('Root ',num2str(i)));
end
legend(legend_mat);
figure,
legend_mat=[];
for i=1:n_roots
    l=low(i);
    r=right(i);
    [y,y_arr,error_arr]=regulafalsi(f,l,r,tol);
    n_error=size(error_arr,2);
    p_x=1:n_error;
    hold on
    semilogy(p_x,error_arr);
    y
    title('Error plot for Regula-Falsi method');
    xlabel('Number of iterations')
    ylabel('Semi-Log error')
    legend_mat=[legend_mat; strcat('Root-',num2str(i))];
    %legend(strcat('Root ',num2str(i)));
end
legend(legend_mat);