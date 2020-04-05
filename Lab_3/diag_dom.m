function [flag_1] = diag_dom(A)
    flag_1=1;
    n=size(A,2);
    for i=1:n
        sum=0;
        for j=1:n
            if i~=j
            sum=abs(A(i,j))+sum;
            end
        end
        if A(i,i) < sum
           flag_1 =0;
           return;
        end
    if flag_1 
    fprintf('Diagonal Dominance is observed !!');
    else 
        fprintf('Diagonal Dominace is not observed !!');
    end
end
