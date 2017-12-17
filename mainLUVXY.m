clc;
close all;
clear;


img = imread('cs484_hw3_data/15088.jpg');
[X,map] = imread('cs484_hw3_data/15088.jpg');

stopThresh = 0.005;
winSize = 0.3; %luv
winSize2 = 1; %xy

params = [winSize winSize2 stopThresh];
[labels, peaks] = segmentImageLUVXY(img, params);

figure;
rgb = label2rgb(labels);
imshow(rgb);

figure;
img_seg = imread('cs484_hw3_data/15088_seg.png');
imshow(label2rgb(img_seg));
