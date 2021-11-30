function [bouncy] = isBouncy(array)
    for i = 2:length(array)
        a{i} = array(i) <= array(1:i-1);
        b{i} = array(i) >= array(1:i-1);
    end
    
    if all([a{:}]) || all([b{:}]) == 1
        bouncy = 0;
    else
        bouncy = 1;
    end
    
end