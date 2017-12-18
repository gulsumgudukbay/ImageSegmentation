clc;
close all;
clear;

fprintf('Varying LUV window size');
%varying luv window size
stopThresh = 0.005;
%winSizeLUV = 0.035; %luv
%winSizeXY = 0.13; %xy

winSizeLUV = 0.031; %luv
winSizeXY = 0.13; %xy

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.033; %luv

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.035; %luv

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.037; %luv

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.039; %luv

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

%varying xy window size
fprintf('Varying LUV window size');
winSizeLUV = 0.035; %luv
winSizeXY = 0.11; %xy

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeXY = 0.12; %xy

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeXY = 0.13; %xy

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeXY = 0.14; %xy

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeXY = 0.15; %xy

params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);


