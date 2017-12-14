clc;
close all;
clear;


img = imread('cs484_hw3_data/15088.jpg');
figure;
imshow(img);

xyz = rgb2xyz(img);
luv_cform = makecform('xyz2uvl');
luv_img = applycform(xyz, luv_cform);
figure;
imshow(luv_img);

