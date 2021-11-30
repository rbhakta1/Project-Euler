clear all; close all; clc;

num = 1;
i = 1;
prev = 2;
div = 0;

tic
while div < 500
    i = i + 1;
    num = num + i;
    d = divisors(num);
    div = length(d);
end
toc 