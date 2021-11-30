clear all; close all; clc;

to_num = 10000;

t(:,1) = 1:to_num;
t(1:to_num,3) = 0;

sum_divs(1,1) = 1;
for i = 2:to_num
    sum_divs(i,1) = sum(divisors(i))-i;
end

t(:,2) = sum_divs;

for i = 1:to_num
    for j = 1:to_num
        if i == t(j,2)
            if t(j,1) == t(i,2) && t(i,1) ~= t(i,2)
                
                t(i,3) = 1;
                t(j,3) = 1;
                
            end
        end
    end
end

total_sum = 0;
for i = 1:to_num    
    if t(i,3) == 1
        total_sum = total_sum + t(i,1);
    end
end




