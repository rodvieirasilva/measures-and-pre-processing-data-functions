% Add up all the vector elements.
function data = measures_and_pre_processing_data_norm_standardization(data)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    avg = measures_and_pre_processing_data_average(data);
    deviation = measures_and_pre_processing_data_standard_deviation(data);
    for idx = 1 : numel(data)
        data(idx) = (data(idx) - avg) / deviation; 
    end
end