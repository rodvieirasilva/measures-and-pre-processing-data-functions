% Add up all the vector elements.
function average = measures_and_pre_processing_data_average(data)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
average = 0;
size = numel(data);
for idx = 1 : size
    average = average + data(idx);
end
average = average / size;
end