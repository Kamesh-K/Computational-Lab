function [T]= gauss_siedel(T)
    n=size(T,2);
    N_MAX=n;
    tolerance=10^3;
    tol_max=10^-6;
    k=0;
    T_new=zeros(N_MAX,N_MAX);
    while tolerance>tol_max
        for i=2:N_MAX
        for j=2:N_MAX-1
            if i == N_MAX
    %             r(i,j) = 2*T(i-1,j)+T(i,j-1)+T(i,j+1);
                    T_new(i,j)=(2*T(i-1,j)+T(i,j-1)+T(i,j+1))/4;
            else 
                T_new(i,j) = (T(i-1,j)+T(i+1,j)+T(i,j-1)+T(i,j+1))/4;            
%                r(i,j) = (T(i-1,j)+T(i+1,j)+T(i,j-1)+T(i,j+1)-4*T(i,j))/4;
            end
            err(i,j) = abs(T(i,j) - T_new(i,j));    
        end
    %     T(i,:) = T(i,:) + r(i,:)*w;
        end
        T=zeros(N_MAX,N_MAX);
        T=T_new;
        T(:,1)=50;
        T(:,N_MAX)=50;
        T(1,:)=100;
        tolerance=max(max(err));
        k=k+1;
    end
    
end