clear all
clc
digits(3);
A=[1 1/2 1/3 1/4; 1/2 1/3 1/4 1/5; 1/3 1/4 1/5 1/6; 1/4 1/5 1/6 1/7];
flag=diag_dom(A);
if flag 
    fprintf('Diagonal Dominance is observed !!\n');
else 
    fprintf('Diagonal Dominace is not observed !!\n');
end
b=[25/12;77/60;57/60;319/420];
tol=(10)^(-12);
n=size(A,2);
x=zeros(n,1);
x=[ 0.2;0.3;0.4;0.5];
p=3;
legend_mat=[];
fprintf('Computing with 3 digit precision\n');
[y,tol1,iter]=gauss_siedel(A,b,x,p,tol);
iter
vpa(y)
size_n=size(tol1,2);
p_x=1:size_n;
hold on
semilogy(p_x,tol1);
legend_mat=[legend_mat; strcat('Precision-',num2str(p))];
p=6;
fprintf('Computing with 6 digit precision\n');
iter
[y,tol1,iter]=gauss_siedel(A,b,x,p,tol);
vpa(y)
size_n=size(tol1,2);
p_x=1:size_n;
hold on
semilogy(p_x,tol1);
legend_mat=[legend_mat; strcat('Precision-',num2str(p))];
p=16;
fprintf('Computing with maximum precision\n');
[y tol2]=gauss_siedel_2(A,b,x,tol);
size_n=size(tol2,2);
p_x=1:size_n;
vpa(y)
legend(legend_mat);
title('Error Plot');
xlabel('Number of iterations')
ylabel('Log-Error')
% hold on
% %semilogy(p_x,tol2);
% legend_mat=[legend_mat; strcat('Precision-',num2str(p))];
% vpa(y)