close all;
clear all;
clc;

v = imread('kamal.jpg');

gray = grayscale(v);
figure(), imshow(gray); %gray is grayscaled image.

B = makebinary(gray);
figure(), imshow(B);    %B is binarised image.

R1 = resize(B);
figure(),imshow(R1);    %R1 is resized image.
