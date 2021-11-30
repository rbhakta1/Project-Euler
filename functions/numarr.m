function [arr] = numarr(num)

arr = str2double(regexp(num2str(num),'\d','match'));

end