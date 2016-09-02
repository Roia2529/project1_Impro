function [CCBinaryImage,endlabelvalue] = CCAauto(binaryimage,startlabelvalue,labelimage)
close all;
%imshow(binaryimage,'InitialMagnification',100);
%imshow(binaryimage);
%truesize;
%pixel = ginput;
%[items,y]= size(pixel);
CCBinaryImage = labelimage;
%close all;

[row,column] = size(binaryimage);
checkedbinary = labelimage;
for i = 1:row
    for j=1:column
        if(checkedbinary(i,j)==0 && binaryimage(i,j)==1)
        Templabelimage = floodfill(binaryimage,[j,i],startlabelvalue);
        area = sum(sum(Templabelimage))/startlabelvalue;
        X = sprintf('area of %d label is %d.',startlabelvalue,area);
        disp(X);
        
        if (area>60)
        CCBinaryImage = CCBinaryImage + Templabelimage;
        startlabelvalue = startlabelvalue + 1;
        end
        
        checkedbinary = checkedbinary + Templabelimage;
        end
    end    
end  
endlabelvalue = startlabelvalue;

end