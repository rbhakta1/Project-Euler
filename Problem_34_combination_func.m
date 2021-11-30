function[output_number] = Problem_34_combination_func(total_space, input_number, output_number, digits)
     
    new_space = total_space;
    new_space = setdiff(new_space, input_number);

    while isempty(new_space) == 0
        % Numbers remain, append next available value from new space
        logical_array = isnan(input_number);
        loc = find(logical_array == 1, 1, 'first');
        input_number(loc) = new_space(1);
        [output_number] = Problem_24_permuation_func(total_space, input_number, output_number); 

        logical_array_2 = isnan(input_number);
        loc_2 = find(logical_array_2 == 0, 1, 'last');
        new_space(new_space == input_number(loc)) = [];
        input_number(loc_2) = NaN;
    end
    if sum(isnan(input_number)) == 0
        output_number(end+1,:) = input_number;
    end
end