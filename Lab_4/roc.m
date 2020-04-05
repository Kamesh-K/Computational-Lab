function [roc]=roc(err_arr)
n=size(err_arr,2);
err_arr_1=err_arr(1:n-1);
err_arr_2=err_arr(2:n);
err_arr_1=log(err_arr_1);
err_arr_2=log(err_arr_2);
[Coeff]=polyfit(err_arr_1,err_arr_2,1);
roc=Coeff(1);
end
