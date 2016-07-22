% Add up all the vector elements.
function f = measures_and_pre_processing_data_octave(task, collumn, file, parameter1, parameter2)

filename = 'train.csv';
delimiterIn = ',';
headerlinesIn = 1;
%data = importdata(filename,delimiterIn,headerlinesIn);
load('train.mat');
%save 'train.mat' data
data = data.data;
sizeX = size(data, 2);

dataResult = zeros(37, sizeX);

for i = 1 : sizeX
    tic 
    j = 1;
     dataCollumn = data(:,i);
     
	 dataNumber = data2number(dataCollumn);
	 
     [maxFrequency, maxFrequencyItem, maxFrequencyRelative, maxFrequencyPercent] = ...
       measures_and_pre_processing_data_frequency(dataNumber);
     dataResult(j, i) = maxFrequency;
     j = j + 1;
     dataResult(j, i) = maxFrequencyItem;
     j = j + 1;
     dataResult(j, i) = maxFrequencyRelative;
     j = j + 1;
     
     dataResult(j, i) = maxFrequencyPercent;
     j = j + 1;
     
     
     dataResult(j, i) = measures_and_pre_processing_data_average(dataNumber);
     j = j + 1;

      [median, indexMedian] = ...
         measures_and_pre_processing_data_median(dataNumber);
     dataResult(j, i) = median;
     j = j + 1;
    
     si = size(indexMedian);
     if(si == 1)     
        dataResult(j, i) = indexMedian;
        j = j + 1;
        
        dataResult(j, i) = -1;
        j = j + 1;
     else
        dataResult(j, i) = indexMedian(1);
        j = j + 1;
        
        dataResult(j, i) = indexMedian(2);
        j = j + 1;
     end
     
     dataResult(j, i) = measures_and_pre_processing_data_average_truncate(dataNumber, 20);
     j = j + 1;
     
     dataResult(j, i) = measures_and_pre_processing_data_average_truncate(dataNumber, 10);
     j = j + 1;

     

      [quartile, index] = ...
          measures_and_pre_processing_data_quartile(dataNumber, 1);
      
     dataResult(j, i) = quartile;
     j = j + 1;
     
     si = size(index);
     if(si == 1)     
        dataResult(j, i) = index;
        j = j + 1;
        
        dataResult(j, i) = -1;
        j = j + 1;
     else
        dataResult(j, i) = index(1);
        j = j + 1;
        
        dataResult(j, i) = index(2);
        j = j + 1;
     end
     
     [quartile, index] = ...
          measures_and_pre_processing_data_quartile(dataNumber, 2);
      
      
     dataResult(j, i) = quartile;
     j = j + 1;
     
     si = size(index);
     if(si == 1)     
        dataResult(j, i) = index;
        j = j + 1;
        
        dataResult(j, i) = -1;
        j = j + 1;
     else
        dataResult(j, i) = index(1);
        j = j + 1;
        
        dataResult(j, i) = index(2);
        j = j + 1;
     end
     
     [quartile, index] = ...
          measures_and_pre_processing_data_quartile(dataNumber, 3);
      
     dataResult(j, i) = quartile;
     j = j + 1;
     
     si = size(index);
     if(si == 1)     
        dataResult(j, i) = index;
        j = j + 1;
        
        dataResult(j, i) = -1;
        j = j + 1;
     else
        dataResult(j, i) = index(1);
        j = j + 1;
        
        dataResult(j, i) = index(2);
        j = j + 1;
     end

     dataResult(j, i) = measures_and_pre_processing_data_interval(dataNumber);
     j = j + 1;
     
     [maxx, minn] ...
            = measures_and_pre_processing_data_max_min(dataNumber);
     dataResult(j, i) = maxx;
     j = j + 1;
     dataResult(j, i) = minn;
     j = j + 1;

     [modeItem, modeNumber] = measures_and_pre_processing_data_mode(dataNumber);
     dataResult(j, i) = modeItem;
     j = j + 1;
     dataResult(j, i) = modeNumber;
     j = j + 1;     

     dataResult(j, i) = measures_and_pre_processing_data_variance(dataNumber);
     j = j + 1;

     dataResult(j, i) = measures_and_pre_processing_data_standard_deviation(dataNumber);
     j = j + 1;

     dataResult(j, i) = measures_and_pre_processing_data_standard_deviation_absolute(dataNumber);
     j = j + 1;
    

     dataResult(j, i) = measures_and_pre_processing_data_standard_dev_median_abs(dataNumber);
     j = j + 1;
    

     dataResult(j, i) = measures_and_pre_processing_data_interval_quartile(dataNumber, 1, 3);
     j = j + 1;
     
     
     %f = measures_and_pre_processing_data_percentile(dataNumber, parameter1);
     
     %measures_and_pre_processing_data_boxplot(dataNumber);

     %measures_and_pre_processing_data_histogram(dataNumber);

     %measures_and_pre_processing_data_pie(dataNumber);   
     
     %f = measures_and_pre_processing_data_norm_min_max(dataNumber, 0, 1);     
     %f = measures_and_pre_processing_data_norm_standardization(dataNumber);
    toc
    (i/sizeX ) * 100
end    
dlmwrite('dataResult.csv', dataResult);

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
dlmwrite('covariance.csv', covariance);
    
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
f = correlation;    
dlmwrite('correlation.csv', correlation);

end







