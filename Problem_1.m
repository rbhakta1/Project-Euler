clear all; close all; clc

a = 5:5:999;
b = 3:3:1000;
c = 15:15:1000;
d = 0;
e = 0;
f = 0;

for i = 1:333
    d = d + b(i);
end
for j = 1:199
    e = e +a(j);
end
for i = 1:66
    f = f +c(i);
end

total = d+e-f;