clc;
close all;
clear;


img = imread('cs484_hw3_data/41004.jpg');
[X,map] = imread('cs484_hw3_data/41004.jpg');

stopThresh = 0.005;
winSize = 0.034; %luv
winSize2 = 0.2; %xy

params = [winSize winSize2 stopThresh];
[labels, peaks] = segmentImageLUVXY(img, params);

figure;
rgb = label2rgb(labels);
imshow(rgb);

figure;
img_seg = imread('cs484_hw3_data/41004_seg.png');
imshow(label2rgb(img_seg));
