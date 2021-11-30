clear all; close all; clc;

format long
n = 100;
total = 100;

for i = 1:99
    total = total*(n-i);
end

a = num2str(total);