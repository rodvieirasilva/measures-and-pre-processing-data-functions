% Add up all the vector elements.
function [modeItem, modeNumber] = measures_and_pre_processing_data_mode(data)
    mapObj = containers.Map();
    modeNumber = 0;
    modeItem =0;
    size = numel(data);
    for idx = 1 : size
        dataIdx = char(data(idx));    
        if isKey(mapObj, dataIdx)
            mapObj(dataIdx) = mapObj(dataIdx) + 1;
        else
            mapObj(dataIdx) = 1;
        end
        if mapObj(dataIdx) > modeNumber 
            modeNumber = mapObj(dataIdx)
            modeItem = dataIdx
        end
    end
end