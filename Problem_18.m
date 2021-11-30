clear all; close all; clc;

fileID = fopen('prob18.txt','r');

formatSpec = '%d %f';
sizeA = [1 Inf];

A = fscanf(fileID,formatSpec,sizeA);

fclose(fileID);

[x,y] = size(A);

tri_size = 15;
Tri = zeros(tri_size);

crit = 0;
count = 0;
num = 0;
row = 0;

for i = 1:tri_size
    row = row + 1;
    for j = 1:tri_size
        if count < row
            Tri(i,j) = A(1,row);
            count = count + 1;
        else
            Tri(i,j) = 0;
        end
    end
    count = 0;
end

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        