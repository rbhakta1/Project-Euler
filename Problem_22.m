clear all; close all; clc;
format longE

filename = 'E:\Documents\Other\Project Euler\p022_names.txt';
fileID = fopen(filename);

array = textscan(fileID,'%s','Delimiter',',');
array = array{1,1};
sort_array = sort(array);

for i = 1:length(sort_array)
    
   value(i) = ((sum(double(sort_array{i,1})-64))+60) * i;
    
end

total_sum = sum(value);

fclose(fileID);






