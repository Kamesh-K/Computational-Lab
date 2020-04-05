% General code for lagrange interpolation of n order polynomial
clc;clear;
syms x;
% Defining base functions
f(x)=x^(0);
q(x)=x^(0);
% Actual function 
g(x)=x^(1/3);
% Given data
fva=[1.58740105 1.709976 1.81712059 1.912931 2.0000];
far=[4 5 6 7 8];

% n is order of polynomial
for n=2:5 
%   Only selecting the first n data
    fval=fva(1:n);
    farg=far(1:n);
    for i=1:n
        t=i+1;
        if i==n
            t=1;
            n=n-1;
        end
        for j=1:n
            if j~=i
                q(x)=q(x)*(((x-farg(j)))/(farg(i)-farg(j)));
            end
        end
        f(x)=f(x)+q(x)*fval(i);
        q(x)=x^(0);
    end
    f(x)=f(x)-1;
    ezplot(f,[0 12])
    hold on
    f(x)=x^(0);
    q(x)=x^(0);
end
ezplot(g,[0 12])
legend('P_{1}(x)','P_{2}(x)','P_{3}(x)','P_{4}(x)','x^{1/3}','Location','southeast')


