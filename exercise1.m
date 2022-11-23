close all;
clear all;
clc

pkg load image;

fruits1 = imread('fruits.png');   % Read the image
subplot(231);                     % Position the image
imshow(fruits1);
title('Original Image')


fruits2 = imresize(imresize(fruits1,1/10),10);
subplot(232);
imshow(fruits2);
title('Resized Image');
imwrite(fruits2,'fruits2.png');


colorchange = rgb2hsv(fruits1);    % Change the colore image to HSV
subplot(233);
imshow(colorchange);                % Display converted version (HSV)
title('RGB to HSV');
imwrite(colorchange,'colorchange.png');     %saves image with name as colorchange


AAAA
