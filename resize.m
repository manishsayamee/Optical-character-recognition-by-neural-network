function [resized_image] = resize(image)

[r , c] = size(image);
i = 1;
j = 1;

%resizing the image to the pixel 250*250
k = floor(r/255);
l = floor(c/255);

resized_image = zeros( 255, 255);

for x = 1:k:r
    for y = 1:l:c
        resized_image(i,j) = image(x,y);
        j = j+1;
    end
    i = i+1;
    j = 1;
end