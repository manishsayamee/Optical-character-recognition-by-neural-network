function [line] = removeline(image)
line = image;
[r,c] = size(line);
i =1; j = 1;  z(1:r) = 0;

for i = 1:r
    for j = 1:c
        if line(i,j) == 1
            z(i) = z(i)+1;
        end
    end
end    
[V , I] = max(z);
line(I-1 , 1:c) = 0;
line(I , 1:c) = 0;
line(I+1 , 1:c) = 0;
end