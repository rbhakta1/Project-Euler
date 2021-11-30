clear all; close all; clc;
tic
count = 1;
for number = 100:100000000
    array = numarr(number);
    bouncy(count) = isBouncy(array);
    count = count + 1;
    ratio = sum(bouncy)/number;
    if ratio >= 0.9900
        break
    end
end
toc
