clc;
clf;
clear all;
close all;

#loads the image
pkg load image;

referenceimage=imread('nature.jpg');

#converts reference image to red
img_red=referenceimage;
img_red(:,:,2)=0;
img_red(:,:,3)=0;

#converts reference image to green.
img_green=referenceimage;
img_green(:,:,1)=0;
img_green(:,:,3)=0;

#convert reference image to blue.
img_blue=referenceimage;
img_blue(:,:,1)=0;
img_blue(:,:,2)=0;

#convert jpg image to png image.
imwrite(referenceimage,'nature.png');
imwrite(img_red,'nature_red.png');
imwrite(img_green,'nature_green.png');
imwrite(img_blue,'nature_blue.png');

# shows all 4 images together
subplot(2,2,1),imshow(referenceimage),title('Reference image');
subplot(2,2,2),imshow(img_red),title('Red  image');
subplot(2,2,3),imshow(img_green),title('Green image');
subplot(2,2,4),imshow(img_blue),title('Blue image');
