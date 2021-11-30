clear all; close all; clc

a = 1:100;
b = 0;
c = 0;
for i = 1:100
    b = a(i)^2+b;
    c = a(i)+c;
end

total = c^2-b;
