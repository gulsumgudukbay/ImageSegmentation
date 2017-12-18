clc;
close all;
clear;


img = imread('cs484_hw3_data/41004.jpg');

stopThresh = 0.005;
winSize = 0.035; %luv
winSize2 = 0.15; %xy

%mean shift detected edges
params = [winSize winSize2 stopThresh];
[labels, peaks] = segmentImageLUVXY(img, params);

figure;
rgb = label2rgb(labels);
imshow(rgb);

rgb = rgb2gray(rgb);
edge_rgb = edge(rgb,'Canny');
figure;
imshow(edge_rgb);

%true detected edges
figure;
img_seg = imread('cs484_hw3_data/41004_seg.png');
imshow(label2rgb(img_seg));

img_seg = rgb2gray(label2rgb(img_seg));
edge_img_seg = edge(img_seg,'Canny');

se = strel('disk', 2);
edge_img_seg = imdilate(edge_img_seg, se);
figure;
imshow(edge_img_seg);

%precision calculation
anded = edge_rgb & edge_img_seg;
figure;
imshow(anded);
true_detected_boundary_pixels = nnz(anded);
no_of_detected_boundary_pixels = nnz(edge_rgb);
no_of_true_boundary_pixels_ground_truth = nnz(edge_img_seg);

precision = true_detected_boundary_pixels / no_of_detected_boundary_pixels;
recall = true_detected_boundary_pixels / no_of_true_boundary_pixels_ground_truth;

fprintf('precision: %f\nrecall: %f\n', precision, recall);
