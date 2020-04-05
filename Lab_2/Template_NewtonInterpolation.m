% Script for Newton's Interpolation.
function [y,d] = newton_inter(x_in,y_in,x)
% x_in y_in are number of given  points
% x_in, y_in size need to be same
% x is the point at which interpolated y value should be calculated
%---------------divided difference table----------------
% create divided difference first order and first elemnt will be a0
% create higher oreder differnce table
% access first element as values of a's
%-------------------------------------------------------
% Now calculate sum as y
% y = a0 +a1(x –x0) + . . . +ak(x – x0)( x – x1)......( x – xk-1)
% where x0,x1,x2....xk are component of x_in vector
end
