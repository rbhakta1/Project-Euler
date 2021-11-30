clear all; close all; clc;

limit = 5000;
combinations = nchoosek(limit,2);

% Generate pentagonal numbers
for i = 1:limit
    Pn(i) = i*(3*i-1)/2;
end

% Make addition and subtraction vectors
count = 1;
while count <= combinations
    
    for j = 1:limit-1
        sum_vec(count) = Pn(limit) + Pn(j);
        sub_vec(count) = abs(Pn(limit) - Pn(j));
        count = count+1;
    end
    limit= limit - 1;
end

% Check if any of the values in the addition and subtraction vectors are in
% the original sequence
log = 0;
for i = 1:length(sum_vec)
    
    search = find(sum_vec(i)==Pn);
    
    if isempty(search) ~= 1
        % Match found
        
        search2 = find(sub_vec(i)==Pn);
        
        if isempty(search2) ~= 1
            % Difference is pentagonal too.
            log = log+1;
            D(log) = sub_vec(i);

        end
    end
    
end
    
        


