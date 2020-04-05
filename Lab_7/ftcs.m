function [ T_evol ] = ftcs(T,size_x,size_t,alpha)
for i = 1:size_t-1
    for j = 2:size_x-1
        T(j,i+1)=alpha*(T(j+1,i)-2*T(j,i)+T(j-1,i))+T(j,i);
    end
end
T_evol=T;
end

