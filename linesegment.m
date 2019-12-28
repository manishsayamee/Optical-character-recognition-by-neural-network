function [im] = linesegment(image)
im = image;
[r,c] = size(im);
z(1:c) = 0;

for i = 1:c
    for j = 1:r
        if im(j,i) == 1
            z(i) = z(i)+1;
        end
    end
end    

for i = 1:c
    if z(i) <= 1
        im(1:r,i) = 0;
    end
end