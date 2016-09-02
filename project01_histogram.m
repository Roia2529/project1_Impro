%Project01-histogram

s = 'Lenna.png';
Original_Image = imread(s);
Gray_Image = rgb2gray(Original_Image);
datas = histogramOwn(Gray_Image, 127, 2, 256);


