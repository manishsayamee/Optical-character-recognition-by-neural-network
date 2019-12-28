close all;
clear all;
clc;

v = imread('test.jpg');

gray = grayscale(v);
%figure(), imshow(gray); %gray is grayscaled image.

B = makebinary(gray);
%figure(), imshow(B);    %B is binarised image.

R1 = resize(B);
%figure(),imshow(R1);    %R1 is resized image.

R2 = imcomplement(R1);

%figure(), imshow(R2);
R3 = removeline(R2);
figure(), imshow(R3);