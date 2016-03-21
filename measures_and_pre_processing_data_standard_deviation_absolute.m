% Add up all the vector elements.
function result = measures_and_pre_processing_data_standard_deviation_absolute(data)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%UNTITLED6 Summary of this function goes here
    %   Detailed explanation goes here
    result = 0;
    qtd = numel(data);
    average = measures_and_pre_processing_data_average(data);
    for idx = 1 : qtd
        result = result + abs (data(idx) - average);
    end
    result = result / (qtd);
end