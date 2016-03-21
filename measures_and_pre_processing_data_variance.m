% Add up all the vector elements.
function variance = measures_and_pre_processing_data_variance(data)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
variance = 0;
qtd = 0;
average = measures_and_pre_processing_data_average(data);

for idx = 1 : numel(data)
    variance = variance + (data(idx) - average) ^ 2;
    qtd = qtd + 1;
end
variance = variance / (qtd - 1);