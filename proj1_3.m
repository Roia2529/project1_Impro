%Project01-denoise
close all;
s = 'proj1_3.png';
Gray_Image = rgb2gray(imread(s));
datas = histogramOwn(Gray_Image, 100, 1, 255);

F1 = RangeFilter(Gray_Image,0,70);
F2 = RangeFilter(Gray_Image,150,213);
F3 = RangeFilter(Gray_Image,220,256);
subplot(1,3,1);
imshow(F1);
subplot(1,3,2);
imshow(F2);
subplot(1,3,3);
imshow(F3);

inputs = size(F1);
labelimage = uint8(zeros(inputs(1),inputs(2)));

[labelimage,endvalue] = CCAauto(F1,1,labelimage);
[labelimage,endvalue] = CCAauto(F2,endvalue,labelimage);
[labelimage,endvalue] = CCAauto(F3,endvalue,labelimage);

%Color_Image = cat(3, Gray_Image, Gray_Image, Gray_Image);
figure(2);
subplot(1,2,1);
imshow(Gray_Image);
subplot(1,2,2);
imagesc(labelimage);
colormap winter;
truesize;
%hold on;



