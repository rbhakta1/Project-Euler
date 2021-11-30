clear all; close all; clc;

index = 0;

for a = 2:1:100
    for b = 2:1:100
        index = index+1;
        num(index) = a^b;
    end
end

c = length(unique(num));

