function [left,right]=rootrange(f,x)
n=size(x,2);
left = [];
right = [];
for i=2:n
    value=f(x(i))*f(x(i-1));
    if value < 0
         left=[left x(i-1)];
         right=[right x(i)];
         % return;
    end
    if f(x(i)) == 0
        left=[left x(i)];
        right=[right x(i-1)];
    end
    if f(x(i-1)) == 0
        left=[left x(i-1)];
        right=[right x(i-1)];   
    end
end
%fprintf('\nThe function is continously increasing or decreasing !!\n');
end
