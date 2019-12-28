function [gray] = grayscale(image)
gray = 0.2989*image(:,:,1)+0.587*image(:,:,2)+0.114*image(:,:,3);
end