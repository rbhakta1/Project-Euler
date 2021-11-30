clear all; close all; clc

a = 1:1:20;
b = 0;
c = 1;
d = 0;

while b < 20
    c = c + 1;
   for i = 1:20
        d = c/a(i);
        e = isinteger(d)+ 1;
        if isreal(d) && rem(d,1)==0
             b = b+1;
        else
             b = 0;
        end

    end
end

%Also works
% a = 0;
% b = 0;
% n = 1:1:9;
% 
% while b < 9;
%     a = a+1;
%     for i = 1:1:9
%         d = a/n(i);
%         if isreal(d) && rem(d,1)==0
%              b = b+1;
%         else
%              b = 0;
%         end
%     end
% end
% 
% 
%     


