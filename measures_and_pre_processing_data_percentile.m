% Add up all the vector elements.
function [percentile, indexPercentile] = measures_and_pre_processing_data_percentile(data, percent)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
data= sort(data);
m = numel(data);

k = m * (percent/100);

if mod(k,1) == 0
   indexPercentile = [k , k  + 1];
   percentile = (data(indexPercentile(1)) + data(indexPercentile(2))) / 2;
else
   k = int64(ceil(k)); 
   indexPercentile = k;
   percentile = data(indexPercentile);
end
    
end