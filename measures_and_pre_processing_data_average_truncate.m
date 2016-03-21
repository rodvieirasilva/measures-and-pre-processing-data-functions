% Add up all the vector elements.
function average = measures_and_pre_processing_data_truncate(data, percent)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
data = sort(data);
average = 0;
qtd = 0;
numAll = numel(data);
ignore = int64((numAll * (percent/100))/2);
for idx = 1 + ignore : numAll - ignore
    average = average + data(idx);
    qtd = qtd + 1;
end
average = average / qtd;