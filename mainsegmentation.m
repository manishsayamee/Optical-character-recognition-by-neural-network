close all;
clear all;
clc;

v = imread('kamal.jpg');

gray = grayscale(v);
%figure(), imshow(gray); %gray is grayscaled image.

R1 = resize(gray);
%figure(),imshow(R1/255);    %R1 is resized image.

B = makebinary(R1);
%figure(), imshow(B);    %B is binarised image.

R2 = imcomplement(B);
%figure(), imshow(R2);

R2 = bwmorph(R2,'thin',inf);
%figure(), imshow(R2);
R3 = linesegment(R2);
figure(), imshow(R3);

[R4 ,N] = charsegment(R3);
for i = 1:N
    figure(), imshow(R4(:,:,i));
end

