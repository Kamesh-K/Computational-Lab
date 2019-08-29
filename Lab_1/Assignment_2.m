% Code to calculate the binary representation of a given real number in 8
% bit representation 
% Clearing Screen and workspace
%   clc
clear all
error=1;
% Obtaining the input for calculation
s='\nEnter the value of N';
n=input(s);
% Initializing the iterator the bit variables 
iter=0;
bit=0;
i=0;
% Checking whether the number is positive or negative 
if(n>0)
    n=n;
    num=n;
    num=floor(num);
else
    % Obtaining the two's complement when the number is negative
    n=2^8+n;
    num=n;
    num=ceil(num);
end
% Calculating the bit representation of the integer part of the number 
while(num>0)
x=rem(num,2);
bit=bit+(10^i)*x;
num=num-x;
num=num/2;
i=i+1;
end
% Calculation for the decimal part of the number 
num_d=abs(n)-floor(abs(n));
% Initializing num if the given number is negative 
if(n<0)
    num_d=1-n;
end
float_max=10;
j=-1;
i=0;
% Calculating the decimal representation 
while(i<float_max)
 x=num_d*2;
 if(x==1)
    bit=bit+1*10^j;
    break;
 else 
    bit=bit+floor(x)*10^j;
    j=j-1;
    num_d=x-floor(x);
 i=i+1;   
 end
end
% Output the binary representation of the given number 
fprintf('The BIT representation of the input number is : %.7f \n\n',bit);