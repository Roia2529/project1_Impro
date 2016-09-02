function [CCBinaryImage,endlabelvalue] = CCA(binaryimage,startlabelvalue,labelimage)
close all;
%imshow(binaryimage,'InitialMagnification',100);
imshow(binaryimage);
truesize;
pixel = ginput;
[items,y]= size(pixel);
CCBinaryImage = labelimage;
close all;
for i = 1:items
    %floodfill
    Templabelimage = floodfill(binaryimage,pixel(i,:),startlabelvalue);
    CCBinaryImage = CCBinaryImage+Templabelimage;
    startlabelvalue = startlabelvalue + 1;
end

endlabelvalue = startlabelvalue;

end