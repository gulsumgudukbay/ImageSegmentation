clc;
close all;
clear;


img = imread('cs484_hw3_data/15088.jpg');
stopThresh = 0.00075;
winSize = 20;
params = [winSize stopThresh];
[labels, peaks] = segmentImage(img, params);


