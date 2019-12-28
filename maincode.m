
clear all;
close all;
clc;

a1 = imread('kamal.jpg');
%figure(1), imshow(a1),title('original image');

a11 = imnoise(a1,'salt & pepper',0.2);
a2 = imresize(a11,0.1);
figure(2), imshow(a2),title('resized image');

a3 = rgb2gray(a2);
figure(3), imshow(a3),title('grayscale image');

a4 = medfilt2(a3);
figure(4), imshow(a4),title('filtered grayscale image');

a5 = imbinarize(a4,'adaptive','ForegroundPolarity','dark','Sensitivity',0.4);


a6 = imcomplement(a5);
%a6 = imfill(a6,'holes');
figure(5),imshow(a6);

label = bwlabel(a6,4);
n = max(max(label));

for i = 1:n
figure,imshow((label == i)),title('segmented image');
i = i+1;
end

for i = 1:n
    thiN =(label == i);
    thinned = bwmorph(thiN,'thin',Inf);
    figure, imshow(thinned),title('thinned segmented image');
    i = i+1;
end