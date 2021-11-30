clear all; close all; clc;

format long
count = 1;
for i = 1:1:999
    tempnum = num2str(1/i, 16);
    if length(tempnum) > 15
        num{count} = tempnum;
        count = count+1;
    end
end
    

