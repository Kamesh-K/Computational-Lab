% Newton interpolation method
clc;clear;
X=[4 5 6 7 8];
Y=[1.58740105 1.709976 1.81712059 1.912931 2.0000];
% x=[0 1 2 3];y=[1 4 9 16];
op=0;
for p=3:3
    x=X(1:p);y=Y(1:p);
    n=length(y);
    % Creating matrix & filling first 2 coloumns with given data
    mat=zeros(n+1);
    mat(:,1)=[x';0];
    mat(:,2)=[y';0];
    collim=n;
    
    % Modifying matrix
    for i=3:n+1
        k=i-1;
        for j=2:collim
            mat(j-1,i)=(mat(j,i-1)-mat(j-1,i-1))/(mat(k,1)-mat(j-1,1));
            k=k+1;
            op=op+1;
        end
        collim=collim-1;
    end
mat
    % Creating polynomial
    syms s;
    f(s)=s^(0);
    q(s)=s^(0);
    g(s)=s^(1/3);
    f(s)=f(s)+mat(1,2)-1;
    for i=2:n
        q(s)=q(s)*(s-x(i-1));
        f(s)=f(s)+mat(1,i+1)*q(s);
    end
    hold on 
    ezplot(f)
    f(s)
    f(s)=s^(0);q(s)=s^(0);
end
p1(s)=Y(1)+((Y(2)-Y(1))/(X(2)-X(1))*(s-X(1)));
ezplot(p1)
ezplot(g)
legend('P_{2}(x)','P_{3}(x)','P_{4}(x)','P_{1}(x)','x^{1/3}','Location','southeast')        
