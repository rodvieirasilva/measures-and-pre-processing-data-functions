classdef TaskMeasuresProcessing
   enumeration
        %Estatística Descritiva 
        %Frequência
        %Proporção de vezes que um
        %atributo assume um dado valor
        %Aplicável a valores numéricos e simbólicos
      Frequency, %    
      %univariados
      %Dados univariados: medidas de localidade
      %Valores numéricos
      Average, %Médias%
      AverageTruncate, %Média truncada%
      Median , %MEdiana%
      Percentile, %Percentil%
      Quartile, %Quartil%
      %Valores Simbólicos
      Mode, %Moda%
      BoxPlot,  %
      Histogram,
      Pie,
      %Dados univariados: medidas de espalhamento
      Interval, %intervalo,  Mostra espalhamento máximo entre valores%
      Variance, %Variância%
      StandardDeviation, %Desvio padrão%
      StandardDeviationAbsolute, %Desvio médio absoluto%
      StandardDeviationMedianAbsolute, %Desvio mediano absoluto%
      IntervalInterQuartile, %Intervalo interquartil%
      %Dados multivariados
      Covariance%,    
      Correlation%,
      NormalizeMinMax,
      NormalizeStandardization
   end
end