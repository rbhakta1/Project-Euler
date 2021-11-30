clear all; close all; clc;

tri_length = 100;
array = zeros(100);
count = 2;
tri_num = 1;

for i = 1:100
   for j = 1:100
       
       if j < count
           array(i,j) = tri_num;
       end
   end
   count = count+1;
end


