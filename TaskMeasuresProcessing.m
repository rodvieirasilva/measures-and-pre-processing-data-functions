classdef TaskMeasuresProcessing
   enumeration
        %Estatistica Descritiva 
        %Frequencia
        %Proporcao de vezes que um
        %atributo assume um dado valor
        %Aplicavel a valores numericos e simbolicos
      Frequency, % teste   
      %univariados
      %Dados univariados: medidas de localidade
      %Valores numericos
      Average, %Medias%
      AverageTruncate, %Media truncada%
      Median , %MEdiana%
      Percentile, %Percentil%
      Quartile, %Quartil%
      %Valores Simbolicos
      Mode, %Moda%
      BoxPlot,  %teste
      Histogram,
      Pie,
      %Dados univariados: medidas de espalhamento
      Interval, %intervalo,  Mostra espalhamento maximo entre valores%
      Variance, %Variancia%
      StandardDeviation, %Desvio padrao%
      StandardDeviationAbsolute, %Desvio medio absoluto%
      StandardDeviationMedianAbsolute, %Desvio mediano absoluto%
      IntervalInterQuartile, %Intervalo interquartil%
      %Dados multivariados
      Covariance,    
      Correlation,
      NormalizeMinMax,
      NormalizeStandardization
   end
end