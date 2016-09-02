function [Markimage,labelimage] = checksurrounding(binaryimage, Markimage,labelimage, labelvalue,x,y,row,column)
%check surrounding

%check left
if( y-1 > 0  && Markimage(x,y-1)==0 )
    Markimage(x,y-1)=1;
    if(binaryimage(x, y-1)==labelvalue) 
        labelimage(x,y-1)=1;
        [Markimage, labelimage] = checksurrounding(binaryimage, Markimage,labelimage, labelvalue,x,y-1,row,column);
    end
end

%check right        
if( ( y+1 <= column ) && (Markimage(x,y+1)==0 ))  
    Markimage(x,y+1)=1;
    if(binaryimage(x, y+1)==labelvalue) 
        labelimage(x,y+1)=1;
        [Markimage, labelimage] = checksurrounding(binaryimage, Markimage,labelimage, labelvalue,x,y+1,row,column);
    end 
end

%check up    
if( ( x-1 > 0 ) && (Markimage(x-1,y)==0 ))
    Markimage(x-1,y)=1;
    if(binaryimage(x-1,y)==labelvalue) 
        labelimage(x-1,y)=1;
        [Markimage, labelimage] = checksurrounding(binaryimage, Markimage,labelimage, labelvalue,x-1,y,row,column);
    end 
end

%check down
if( ( x+1 <= row ) && (Markimage(x+1,y)==0 )) 
    Markimage(x+1,y)=1;
    if(binaryimage(x+1, y)==labelvalue) 
        labelimage(x+1,y)=1;
        [Markimage, labelimage] = checksurrounding(binaryimage, Markimage,labelimage, labelvalue,x+1,y,row,column);
    end     
       
end

%figure(2);
%subplot(1,2,1);
%imshow(binaryimage);
%subplot(1,2,2);
%imshow(labelimage);
%truesize;
%pause(10^-18);

end