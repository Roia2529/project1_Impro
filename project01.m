%Project01-CCs
close all;
%s = 'shapes_noise.tiff';
s = 'turkeys.tiff';
Gray_Image = imread(s);
%datas = histogramOwn(Gray_Image, 255, 1, 255);
F = RangeFilter(Gray_Image,95,200);
%imshow(F,'InitialMagnification',200);
Color_Image = cat(3, Gray_Image, Gray_Image, Gray_Image);
%pixel = ginput(1);
inputs = size(F);
labelimage = uint8(zeros(inputs(1),inputs(2)));

[labelimage,endvalue] = CCA(F,1,labelimage);
%Color_Image(:,:,2) = Color_Image(:,:,2)+ (50*(labelimage));
figure(2);
subplot(1,2,1);
imagesc(F);
subplot(1,2,2);
imagesc(labelimage);
%truesize;
colormap default;
%hold on;

