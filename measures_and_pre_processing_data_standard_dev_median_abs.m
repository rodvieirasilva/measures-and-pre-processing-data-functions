% Add up all the vector elements.
function result = measures_and_pre_processing_data_standard_dev_median_abs(data)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    data = sort(data);
    size = numel(data);
    other = zeros(size, 1);
    median = measures_and_pre_processing_data_average(data);
    for idx = 1 : size
        other(idx) = abs (data(idx) - median);
    end
    result = measures_and_pre_processing_data_median(other);
end