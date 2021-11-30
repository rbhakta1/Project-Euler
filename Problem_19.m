clear all; close all; clc;

Jan = zeros(1,31); Jan(1) = 1;
Feb = zeros(1,28); %Resized later depending on the year
Mar = zeros(1,31); Mar(1) = 1;
Apr = zeros(1,30); Apr(1) = 1;
May = zeros(1,31); May(1) = 1;
Jun = zeros(1,30); Jun(1) = 1;
Jul = zeros(1,31); Jul(1) = 1;
Aug = zeros(1,31); Aug(1) = 1;
Sept = zeros(1,30); Sept(1) = 1;
Oct = zeros(1,31); Oct(1) = 1;
Nov = zeros(1,30); Nov(1) = 1;
Dec = zeros(1,31); Dec(1) = 1;

sunday_count = 0;
day_counter = 1;
count = 0;
special = 0;

for i = 1900:2000
    
    % Get correct size of february
    if rem(i,4) == 0
        % It's a leap year
        Feb = zeros(1,29);
        special = 1;
    end
    if rem(i,100) == 0
        % Not a leap year
        Feb = zeros(1,28);
        special = 1;
    end
    if rem(i,400) == 0
        % Still a leap year even if it's divisible by 100
        Feb = zeros(1,29);
        special = 1;
    end
    
    % Not a leap year
    if special == 0
        Feb = zeros(1,28);
    end
    
    special = 0;
    Feb(1) = 1;
    year = cat(2,Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sept,Oct,Nov,Dec);
    
    for j = 1:length(year)
        if year(j) == 1
            % It's the first of the month
            % Is it a sunday?
            if day_counter == 7
                % It's a sunday and the 1st of the month
                % Ignore year 1900
                if i > 1900
                    count = count + 1;
                end
            end
        end 
            
        if day_counter == 7
            day_counter = 1; % Reset weekly counter
        else
            day_counter = day_counter + 1;
        end
        
    end
end





