clc
clear all
syms x
f(x)=x*(16-2*x)*(10-2*x)-100;
x=linspace(0,9,100);
[low,right]=rootrange(f,x);
tol=exp(-20);
n_roots=size(low,2);
x_solve=vpasolve(f);
fprintf('Solutions for the given equation are : \n')
x_solve
fprintf('Solutions obtained through BiSection method are :\n')
legend_mat=[];
for i=1:n_roots
    l=low(i);
    r=right(i);
    [y,y_arr,error_arr]=bisection(f,l,r,tol);
    n_error=size(error_arr,2);
    p_x=1:n_error;
    hold on
    semilogy(p_x,error_arr);
    %fprintf('%f\n',y)
    y
    title('Error plot for Bisection method');
    xlabel('Number of iterations')
    ylabel('Semi-Log error')
    legend_mat=[legend_mat; strcat('Root-',num2str(i))];
    %legend(strcat('Root ',num2str(i)));
end
fprintf('Rate of convergence of BiSection method - ')
roc(error_arr)
legend(legend_mat);
figure,
legend_mat=[];
tol=exp(-20);
fprintf('Solutions obtained through Regula-Falsi method are :\n')
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
fprintf('Rate of convergence of Regula-Falsi method - ')
roc(error_arr)