close all;
clear all;
clc;

#a.	Using the Editor of Octave, create a program that will load and display parrots.jpg
pkg load image;
parrots = imread('parrots.jpg');
imshow(parrots);

#b.	Examine the size of the parrots by typing whos to find out the size of the image that you have read in
whos parrots


# c and d Converting rgb image to gray scale image
grayparrots=rgb2gray(parrots);

#print original image.
subplot(1,2,1),imshow(parrots),title('original image');

#shows gray image.
subplot(1,2,2),imshow(grayparrots),title('converted gray  image');
