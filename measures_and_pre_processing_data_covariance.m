% Add up all the vector elements.
function covariance = measures_and_pre_processing_data_covariance(data1, data2)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
covariance = 0;
qtd = numel(data1);
avgI = measures_and_pre_processing_data_average(data1);
avgJ = measures_and_pre_processing_data_average(data2);

for idx = 1 : qtd
    covariance = covariance + (data1(idx) - avgI) * (data2(idx) - avgJ);
end
covariance = covariance / (qtd -1);

end