function [Markimage,labelimage] = checks4neighbor(binaryimage, Markimage,labelimage, labelvalue,x,y,row,column)
%check surrounding
import java.util.LinkedList
q = LinkedList();
q.add([x, y]);

while q.size() > 0
  
    pixel = q.removeLast();
    tmpx = pixel(1);
    tmpy = pixel(2);

    %check left
    while ( tmpy-1 > 0  && binaryimage(tmpx, tmpy-1)==labelvalue)
        tmpy = tmpy-1;
    end

        lefty = tmpy;

    if lefty > pixel(2)
       lefty = pixel(2); 
    end

    tmpy = pixel(2);
    
    %check right
    while ( tmpy+1 <= column && binaryimage(tmpx, tmpy+1)==labelvalue)
        tmpy = tmpy+1;
    end

    righty = tmpy;

    if righty < pixel(2)
       righty = y; 
    end 

labelimage(tmpx,lefty:righty)=1;
Markimage(tmpx,lefty:righty)=1;

    for tmpy = lefty:righty
        %check up
        %if(tmpx-1 > 0 && Markimage(tmpx-1,tmpy)==0 && binaryimage(tmpx-1, tmpy)==labelvalue)
        if(tmpx-1 > 0)
            if binaryimage(tmpx-1, tmpy)==labelvalue && Markimage(tmpx-1,tmpy)==0    
            q.add([tmpx-1,tmpy]);
            end
            Markimage(tmpx-1,tmpy)=1;
        end
  
        %check down
        if(tmpx+1 <= row)
            if binaryimage(tmpx+1, tmpy)==labelvalue && Markimage(tmpx+1,tmpy)==0
            q.add([tmpx+1,tmpy]);
            end
             Markimage(tmpx+1,tmpy)=1;
        end
       
    end

%imagesc(labelimage);
%truesize;
%pause(10^-18);
end
end