% Add up all the vector elements.
function f = measures_and_pre_processing_data(task, collumn, file, parameter1, parameter2)

if file == 2
    data = read_mixed_csv('data2.dat', ',');
else
    data = read_mixed_csv('test.csv', ' ');
end

sizeX = size(data);
dataCollumn = data(:,collumn);

switch task
    case TaskMeasuresProcessing.Frequency
     f = measures_and_pre_processing_data_frequency(dataCollumn);
    case TaskMeasuresProcessing.Average     
     f = measures_and_pre_processing_data_average(dataNumber);
    case TaskMeasuresProcessing.Median        
     f = measures_and_pre_processing_data_median(dataNumber);
    case TaskMeasuresProcessing.AverageTruncate
     f = measures_and_pre_processing_data_average_truncate(dataNumber, parameter1);
    case TaskMeasuresProcessing.Percentile
     f = measures_and_pre_processing_data_percentile(dataNumber, parameter1);
    case TaskMeasuresProcessing.Quartile        
     f = measures_and_pre_processing_data_quartile(dataNumber, parameter1);
    case TaskMeasuresProcessing.Interval
     f = measures_and_pre_processing_data_interval(dataNumber);

    case TaskMeasuresProcessing.Mode
     f = measures_and_pre_processing_data_mode(dataCollumn);

    case TaskMeasuresProcessing.BoxPlot
     measures_and_pre_processing_data_boxplot(dataNumber);
    case TaskMeasuresProcessing.Histogram
     measures_and_pre_processing_data_histogram(dataNumber);
    case TaskMeasuresProcessing.Pie
     measures_and_pre_processing_data_pie(dataNumber);   
    case TaskMeasuresProcessing.Variance
     f = measures_and_pre_processing_data_variance(dataCollumn);
    case TaskMeasuresProcessing.StandardDeviation     
     f = measures_and_pre_processing_data_standard_deviation(dataNumber);
    case TaskMeasuresProcessing.StandardDeviationAbsolute        
     f = measures_and_pre_processing_data_standard_deviation_absolute(dataNumber);
    
    case TaskMeasuresProcessing.StandardDeviationMedianAbsolute
     f = measures_and_pre_processing_data_standard_dev_median_abs(dataNumber);
    
    case TaskMeasuresProcessing.IntervalInterQuartile
     f = measures_and_pre_processing_data_interval_quartile(dataNumber, parameter1, parameter2);
    
    case TaskMeasuresProcessing.Covariance
     covariance = zeros(sizeX);
     
     for i = 1 : sizeX
        for j = 1 : sizeX
            try
                covariance(i,j) = measures_and_pre_processing_data_covariance(data2number(data(:,i)), data2number(data(:,j)));
            catch ex
                covariance(i,j) = 0;
            end
        end
     end
     f = covariance
    case TaskMeasuresProcessing.Correlation
     correlation = zeros(sizeX);     
     for i = 1 : sizeX
        for j = 1 : sizeX
            try
                correlation(i,j) = measures_and_pre_processing_data_correlation(data2number(data(:,i)), data2number(data(:,j)));
            catch ex
                correlation(i,j) = 0;
            end
        end
     end
     f = correlation
    case TaskMeasuresProcessing.NormalizeMinMax    
     f = measures_and_pre_processing_data_norm_min_max(dataNumber, parameter1, parameter2);
   case TaskMeasuresProcessing.NormalizeStandardization    
     f = measures_and_pre_processing_data_norm_standardization(dataNumber);

end

end

function result = data2number(data)
  result = zeros(numel(data), 1);
  for idx = 1: numel(data)
    result(idx) = cell2num(data(idx));    
  end
end  

function result = data2char(data)
  result = zeros(numel(data), 1);
  for idx = 1: numel(data)
    result(idx) = char(data(idx));    
  end
end 







