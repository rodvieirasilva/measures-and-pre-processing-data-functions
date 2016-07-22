% Add up all the vector elements.
function [maxFrequency, maxFrequencyItem, maxFrequencyRelative, maxFrequencyPercent] = measures_and_pre_processing_data_frequency(data)
mapObj = containers.Map();
maxFrequency = 0;
maxFrequencyItem =0;
qtd = 0;
for idx = 1 : numel(data)
    dataIdx = data(idx);
    
    if iscell(data(idx))
        dataIdx = char(data(idx));        
    end
    
    dataIdx = num2str(data(idx));
    if isKey(mapObj, dataIdx)
        mapObj(dataIdx) = mapObj(dataIdx) + 1;
    else
        mapObj(dataIdx) = 1;
    end
    qtd = qtd + 1;
    if mapObj(dataIdx) > maxFrequency 
        maxFrequency = mapObj(dataIdx);
        maxFrequencyItem = str2num(dataIdx);
         
    end
end
maxFrequencyRelative = maxFrequency /qtd;
maxFrequencyPercent = maxFrequencyRelative* 100;