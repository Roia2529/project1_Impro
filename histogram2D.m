function output_args = histogram2D( InputImage2D, n, min, max )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%statistic = {0};
%statistic.column = n;
Range = max - min;
Interval = Range / n ;

%for i = 1; i <= Gray_Image.column; i++
%    for j = 1; j<= Gray_Image.row ; j++
%        k = Gray_Image(i,j);
%        statistic(k)++;
%    end
%end
Range_vector = [min:Interval:max];
Original_histogram = histogram(InputImage2D,Range_vector);

%Original_histogram.BinLimits = [min,max];

output_args = Original_histogram.Values;

Original_histogram.NumBins;
%plot(output_args);

end

