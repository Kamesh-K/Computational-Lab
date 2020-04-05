clear all
clc 
syms x
f(x)=x^3;
s='Enter the input value for a :';
a=input(s);
s='Enter the input value for b : ';
b=input(s);
s='Enter the input value for h : ';
h=input(s);
[f_diff, err_fdiff]=forward_diff(f,a,b,h);
[b_diff, err_bdiff]=backward_diff(f,a,b,h);
[c_diff, err_cdiff]=central_diff(f,a,b,h);
df=diff(f);
x=a:h:b;
n=size(x,2);
p_f=x(1:n-1);
p_b=x(2:n);
p_c=x(2:n-1);
hold on
fplot(df,[a b]);
plot(p_f,f_diff,'--');
plot(p_b,b_diff,'--');
plot(p_c,c_diff,'-*');
legend('Analytical Diff','Forward Diff','Backward Diff','Central Diff','Location','Best')
xlabel('X values')
ylabel('Differential value at x')
title('Comparison of different methods');
h_start=h;
x_point=(a+b)/2;
fp_err=zeros(10,1);
bp_err=zeros(10,1);
cp_err=zeros(10,1);
h_array=[];
for i=1:10
  h_array=[h_array h];
  [fp_diff, fp_err(i)]=forward_diff(f,x_point,x_point+h,h);
  [bp_diff, bp_err(i)]=backward_diff(f,x_point-h,x_point,h);
  [cp_diff, cp_err(i)]=central_diff(f,x_point-h,x_point+h,h);
  h=h/10;
end
figure,
loglog(h_array,fp_err,'-*');
hold on
loglog(h_array,cp_err,'-*');
loglog(h_array,bp_err,'-*');
legend('Forward Diff','Central Diff','Backward Diff','Location','Best')
set ( gca, 'xdir', 'reverse' )
xlabel('h value')
ylabel('Log error')
title('Comparison of different methods');
%[c_min,c_min_indx]=min(cp_err);
%[c_diff, cp_err]=central_diff(f,x_point-h,x_point+h,h_array(c_min_indx));
%polyfit(x(2:n-1),vpa(cp_err),2)
%syms x 
%c_diff=(f(x_point+h)-f(x_point-h))/h