clc;
close all;
clear;

fprintf('Varying LUV window size');
stopThresh = 0.005;
winSizeLUV = 0.030; %luv

params = [winSizeLUV stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1));
main('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
main('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
main('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
main('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
main('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.032; %luv

params = [winSizeLUV stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1));
main('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
main('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
main('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
main('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
main('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.034; %luv

params = [winSizeLUV stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1));
main('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
main('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
main('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
main('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
main('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.036; %luv

params = [winSizeLUV stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1));
main('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
main('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
main('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
main('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
main('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

winSizeLUV = 0.038; %luv

params = [winSizeLUV stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1));
main('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
main('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
main('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
main('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
main('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

