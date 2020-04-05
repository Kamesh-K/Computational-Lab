clear all;
clc;
close all;
N_MAX=10;
T=zeros(N_MAX,N_MAX);
r=zeros(N_MAX,N_MAX);
T(:,1)=50;
T(:,N_MAX)=50;
T(1,:)=100;
w= 4/(2+(2*sqrt(1-(cos(pi/(N_MAX-1)^2)))));
tol = 10^(-5);
err=100;
tol=10^-6;
while err > tol
for i=2:N_MAX
    for j=2:N_MAX-1
        if i == N_MAX
%             r(i,j) = 2*T(i-1,j)+T(i,j-1)+T(i,j+1);
               r(i,j) = (2*T(i-1,j)+T(i,j-1)+T(i,j+1)-4*T(i,j))/4;
        else 
%             r(i,j) = T(i-1,j)+T(i+1,j)+T(i,j-1)+T(i,j+1);            
           r(i,j) = (T(i-1,j)+T(i+1,j)+T(i,j-1)+T(i,j+1)-4*T(i,j))/4;
        end
        T(i,j) = T(i,j) + r(i,j)*w;    
    end
%     T(i,:) = T(i,:) + r(i,:)*w;
end
%   T = T + r*w;
err = max(max(abs(r)));
end
surf(T);
colorbar;
