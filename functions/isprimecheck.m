function [bool] = isprimecheck(num)

    lim = round(0.5*num);
    
    for i = 2:lim
        if rem(num,i) == 0
            % number is not a prime
            bool = false;
            break
        else
            bool = true;
        end
    end
end