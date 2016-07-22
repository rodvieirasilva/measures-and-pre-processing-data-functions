% Add up all the vector elements.
function correlation = measures_and_pre_processing_data_correlation(data1, data2)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
covariance = measures_and_pre_processing_data_covariance(data1, data2);
deviation1 = measures_and_pre_processing_data_standard_deviation(data1);
deviation2 = measures_and_pre_processing_data_standard_deviation(data2);
correlation = covariance / (deviation1*deviation2);

end