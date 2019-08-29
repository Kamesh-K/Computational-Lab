% Code to calculate the value of cos(x) using McLaurin's Series 
% Clearing Screen and workspace
clc
clear all 
% Initialize the value of maximum number of terms (n) = 8
n=8;
% Initialize the value x = 0.3*pi
x=0.3*pi;
% Relative Error Difference between the calculated and the actual value of cosine at
% x = 0.3*pi
arr_diff=(1-cos(x))/cos(x);
% Value of Cosine calculated is stored in arr_x 
arr_x=1;
% Initializing with the first term 
cos_x=1;
% Temp. Variable to store the relative difference
diff=0;
% Function to calculate the n th of the McLaurin Series 
f=@(x,i)((-1)^i)*((x^(2*i))/(factorial(2*i)))
% For loop to calculate the changes when the number of terms is varied from
% 1 to n, i denotes the iterating variable 
for i=1:n
    cos_x=cos_x+f(x,i);             % Calculating the Cosine value from series 
    arr_x=[arr_x,cos_x];            % Appending it to existing array
    diff=abs(cos_x-cos(x))/cos(x);  % Calculating the relative difference 
    arr_diff=[arr_diff,diff];       % Appending the relative difference
end
x=1:n+1;                            % Variable for plotting
semilogy(x,arr_diff);               % Plotting the relative error 
% Title, Label and Legends for the plot 
title('McLaurin Series Approximation');
xlabel('Number of terms');
ylabel('Relative error in semilog scale');
legend('Relative error Vs. Number of terms (Semi-Log)')
