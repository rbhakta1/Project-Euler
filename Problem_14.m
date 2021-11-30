clear all; close all; clc;


a = 0;
count = 0;
value = 2;
prev = 0;

for i = 1:1:1000000
    num = i;
    while value > 1
    a = mod(i,2);
        if a == 0  %even
            i = i/2;
            value = i;
            count = count + 1;
        end
    
        if a == 1 && value ~= 1   %odd
            i = 3*i+1;
            value = i;
            count = count + 1;
        end
    end
    
    if count > prev;
        highest = num;
        prev = count;
    end
    count = 0;
    value = 2;
    
end

    