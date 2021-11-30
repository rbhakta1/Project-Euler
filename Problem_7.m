clear all; close all; clc;
a = 0;
w = 0;
while (w == 0)
    a = a + 1;
    if (length(primes(a)) == 10001)
        number = a;
        w = 1;
    end
end