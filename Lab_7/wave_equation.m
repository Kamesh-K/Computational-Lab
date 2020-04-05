function [ wave ] = wave_equation(f,h,r,n,m)
r2 = r^2;
r22 = r^2/2;
s1 = 1-r^2;
s2 = 2-2*r^2;
wave = zeros(n,m);
for i = 2:n-1
    wave(i,1) = feval(f,h*(i-1));
    wave(i,2) = s1*feval(f,h*(i-1))+r22*feval(f,h*i)+feval(f,h*(i-2));
end
for j = 3:m
    for i = 2:n-1
        wave(i,j) = s2*wave(i,j-1)+r2*(wave(i-1,j-1)+wave(i+1,j-1))-wave(i,j-2); 
    end
end
wave = wave';
end

