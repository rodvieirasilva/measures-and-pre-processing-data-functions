classdef TaskMeasuresProcessing
   enumeration
        %Estat�stica Descritiva 
        %Frequ�ncia
        %Propor��o de vezes que um
        %atributo assume um dado valor
        %Aplic�vel a valores num�ricos e simb�licos
      Frequency, %    
      %univariados
      %Dados univariados: medidas de localidade
      %Valores num�ricos
      Average, %M�dias%
      AverageTruncate, %M�dia truncada%
      Median , %MEdiana%
      Percentile, %Percentil%
      Quartile, %Quartil%
      %Valores Simb�licos
      Mode, %Moda%
      BoxPlot,  %
      Histogram,
      Pie,
      %Dados univariados: medidas de espalhamento
      Interval, %intervalo,  Mostra espalhamento m�ximo entre valores%
      Variance, %Vari�ncia%
      StandardDeviation, %Desvio padr�o%
      StandardDeviationAbsolute, %Desvio m�dio absoluto%
      StandardDeviationMedianAbsolute, %Desvio mediano absoluto%
      IntervalInterQuartile, %Intervalo interquartil%
      %Dados multivariados
      Covariance%,    
      Correlation%,
      NormalizeMinMax,
      NormalizeStandardization
   end
end