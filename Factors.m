clc
clear all
s='Enter the number - ';
x=input(s);
k=1;
for(i=2:x/2)
        if rem(x,i)==0
        a(k)=i;
        k=k+1;
        end
end
fprintf('The factors are - ')
fprintf('1 ')
for(i=1:k-1)
    fprintf('%d ',a(i))
end
fprintf('\n')