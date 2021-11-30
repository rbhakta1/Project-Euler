clear all; close all; clc;

format long

grid_size = 20;  %Example 2x2 grid = 2, 3x3 grid = 3
a = zeros(grid_size+1);
a(:,1) = 1;
a(1,:) = 1;

for i = 2:grid_size+1
    for j = 2:grid_size+1
        
        a(i,j) = (a(i,j-1) + a(i-1,j));
    end
end

disp(a(grid_size+1,grid_size+1));
