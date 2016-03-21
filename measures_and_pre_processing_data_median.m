% Add up all the vector elements.
function [median, indexMedian] = measures_and_pre_processing_data_median(data)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
data  =sort(data);
median = 0;
indexMedian=-1;
qtd = numel(data);
center = qtd/2;
if mod(qtd,2) == 0 
    %corrigindo problemas de indice
    indexMedian = [center, center + 1]
    median = (data(indexMedian(1)) + data(indexMedian(2))) / 2
else    
    indexMedian = ((qtd - 1)/2) + 1
    median = data(indexMedian)
end

