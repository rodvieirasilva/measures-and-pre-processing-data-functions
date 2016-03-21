% Add up all the vector elements.
function norm = measures_and_pre_processing_data_norm_min_max(data, intervalMin, intervalMax)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    mi = min(data);
    ma = max(data);
    diff = ma - mi;
    size = numel(data);
    norm = zeros(size, 1);
    for idx = 1 : size
        norm(idx) = intervalMin + (((data(idx) - mi) / diff) * (intervalMax-intervalMin));
    end
end