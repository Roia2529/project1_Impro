function output_args = histogramOwn( Gray_Image, n, min, max )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

statistic = zeros(256,1);
Range = max - min + 1;
Interval = floor(Range / n );

v = size(Gray_Image);
Height = v(1);
Width = v(2);

for i = 1: 1 :  Height
    for j = 1: 1 : Width
        k = Gray_Image(i,j);
        statistic(k+1,1) = statistic(k+1,1) + 1;
    end
end
disp(statistic);
output_args = zeros(n,1);

for i = 1 : 1 : n-1
    for j = min + Interval*(i-1) : min + Interval*(i) - 1 
        output_args(i) = output_args(i) + statistic(j,1);
    end
end

    for k = min + Interval*(n-1) : max
        output_args(n) = output_args(n) + statistic(k,1);
    end
    subplot(1,2,1);
    imshow(Gray_Image);
    title('Gray Image','FontSize',19);
    subplot(1,2,2);
    %disp(output_args);
    bar(output_args,'b');
    title('Histogram','FontSize',19);
    %set(gca,'XTicklabel',{min:Interval:max});
    truesize;
end

