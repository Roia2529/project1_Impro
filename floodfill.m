function labelimage = floodfill(binaryimage,seed,labelvalue)

inputs = size(binaryimage);
labelimage = zeros(inputs(1),inputs(2));
Markimage = labelimage;
y = floor(seed(1,1));
x = floor(seed(1,2));
binaryvalue = binaryimage(x,y);
disp(binaryvalue);

Markimage(x,y) = 1; %mark that this point is checked.
labelimage(x,y) = 1;

%[ResultMark, Resultlabel] = checksurrounding(binaryimage, Markimage,labelimage,binaryvalue,x,y,inputs(1),inputs(2));
[ResultMark, Resultlabel] = checks4neighbor(binaryimage, Markimage,labelimage,binaryvalue,x,y,inputs(1),inputs(2));
%figure(4);
%subplot(1,2,1);
%imshow(Resultlabel,'InitialMagnification',100);
%ResultMark = mat2gray(ResultMark, [0 1]);
%subplot(1,2,2);
%imshow(ResultMark,'InitialMagnification',100);
labelimage = uint8(Resultlabel*labelvalue);



