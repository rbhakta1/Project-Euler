clear all;close all;clc
a = 1:1:1000;
b = 1:1:1000;
c = 1:1:1000;

for i = 1:1:1000
    for j = 1:1:1000
        for k = 1:1:1000
            if (a(i)+b(j)+c(k)) == 1000
                if (a(i)^2+b(j)^2) == (c(k))^2
                    x = a(i);
                    y = b(j);
                    z = c(k);
                end
            end
        end
    end
end

product = x*y*z

                