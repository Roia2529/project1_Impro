function G = RangeFilter(I, min, max)
%to filter out noise and return a binary image
G = (I < max) & (I >= min);

%I = mat2gray(G, [0 1]);




