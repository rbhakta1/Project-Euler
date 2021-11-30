clear all; close all; clc;

lastnum = 1001*1001;
count = 1;
skip = 2;
num = 0;
sum_diag = 1;
i = 1;
num(1) = 3;


while num <= lastnum
    i = i+1;
    num(i) = num(i-1)+skip;
    sum_diag = num(i-1)+sum_diag;
    count = count+1;
    
    if count == 4
        count = 0;
        skip = skip+2;
    end
end
sum_diag = sum_diag;
disp(sum_diag)