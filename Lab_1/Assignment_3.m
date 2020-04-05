% Code to calculate the square root of a number using divide and average
% method 
% Clearing Screen and workspace
clc
clear all 
error=1;
% Obtaining the input from the user 
s='\nEnter the value of N  -  ';
n=input(s);
% Initializing the iter variable 
iter=0;
% Obtaining the guess value from the user 
s='Enter the Guess value  -   ';
x_guess=input(s);
% Initializing the maximum iterations 
max_iter=10000;
% While loop to check for convergence 
while(error>=10^(-12) && iter <max_iter)
iter=iter+1;                % Updating the iter for each iteration
x_new=(n/x_guess)+x_guess;  % Calculating the new value using divide and average method 
x_new=x_new/2;              
error=x_new-x_guess;        % Calculating the error for checking convergence
x_guess=x_new;              % Updating the calculated value as the guess value 
end
% Output the calculated square root of the number 
fprintf('The square root of the input number is - %.7f \n',x_new);