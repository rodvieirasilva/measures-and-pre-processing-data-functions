% Add up all the vector elements.
function [quartile, index] = measures_and_pre_processing_data_quartile(data, number)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[quartile, index] = measures_and_pre_processing_data_percentile(data, 25 * number);
end

