% Add up all the vector elements.
function result = measures_and_pre_processing_data_interval_quartile(data, x, y)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[quartileX, index] = measures_and_pre_processing_data_quartile(data, x);

[quartileY, index] = measures_and_pre_processing_data_quartile(data, y);

result = quartileX - quartileY

end