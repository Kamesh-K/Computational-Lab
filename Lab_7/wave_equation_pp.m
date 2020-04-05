function [ wave ] = wave_equation_pp(f,h,r,n,m)
r2 = r^2;
r22 = r^2/2;
s1 = 1-r^2;
s2 = 2-2*r^2;
wave = zeros(n,m);
for i = 2:n-1
    wave(i,1) = feval(f,h*(i-1));
    wave(i,2) = s1*feval(f,h*(i-1))+r22*feval(f,h*i)+feval(f,h*(i-2));
end
wave(1,1)=feval(f,0);
wave(1,2)=s1*feval(f,h*(0))+r22*feval(f,1*h)+feval(f,h*(n-1));
wave(n,1)=wave(1,1);
wave(n,2) = wave(1,2);
for j = 3:m
    for i = 2:n-1
        wave(i,j) = s2*wave(i,j-1)+r2*(wave(i-1,j-1)+wave(i+1,j-1))-wave(i,j-2); 
    end
    wave(1,j) = s2*wave(1,j-1)+r2*(wave(n,j-1)+wave(2,j-1))-wave(1,j-2); 
    wave(n,j) = s2*wave(n,j-1)+r2*(wave(n,j-1)+wave(2,j-1))-wave(n,j-2); 
end
wave = wave';
end

