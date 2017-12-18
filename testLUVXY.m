clc;
close all;
clear;

fprintf('Varying LUV window size');
%varying luv window size
stopThresh = 0.005;
%winSizeLUV = 0.035; %luv
%winSizeXY = 0.13; %xy

% winSizeLUV = 0.031; %luv
% winSizeXY = 0.13; %xy
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeLUV = 0.033; %luv
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeLUV = 0.035; %luv
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeLUV = 0.037; %luv
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeLUV = 0.039; %luv
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% %varying xy window size
% fprintf('Varying LUV window size');
% winSizeLUV = 0.035; %luv
% winSizeXY = 0.11; %xy
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeXY = 0.12; %xy
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeXY = 0.13; %xy
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeXY = 0.14; %xy
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
% 
% winSizeXY = 0.15; %xy
% 
% params = [winSizeLUV winSizeXY stopThresh];
% fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
% mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
% mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
% mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);
% mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
% mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);

%FINAL COMMON PARAMETER VALUES
winSizeLUV = 0.035; %luv
winSizeXY = 0.13; %xy
params = [winSizeLUV winSizeXY stopThresh];
fprintf('\nParams: %.3f %.3f\n', params(1), params(2));
mainLUVXY('cs484_hw3_data/15088.jpg', 'cs484_hw3_data/15088_seg.png', params);
mainLUVXY('cs484_hw3_data/22090.jpg', 'cs484_hw3_data/22090_seg.png', params);
mainLUVXY('cs484_hw3_data/24063.jpg', 'cs484_hw3_data/24063_seg.png', params);
mainLUVXY('cs484_hw3_data/35008.jpg', 'cs484_hw3_data/35008_seg.png', params);
mainLUVXY('cs484_hw3_data/35070.jpg', 'cs484_hw3_data/35070_seg.png', params);

mainLUVXY('cs484_hw3_data/41004.jpg', 'cs484_hw3_data/41004_seg.png', params);
mainLUVXY('cs484_hw3_data/55067.jpg', 'cs484_hw3_data/55067_seg.png', params);
mainLUVXY('cs484_hw3_data/68077.jpg', 'cs484_hw3_data/68077_seg.png', params);
mainLUVXY('cs484_hw3_data/108073.jpg', 'cs484_hw3_data/108073_seg.png', params);
mainLUVXY('cs484_hw3_data/113016.jpg', 'cs484_hw3_data/113016_seg.png', params);

mainLUVXY('cs484_hw3_data/124084.jpg', 'cs484_hw3_data/124084_seg.png', params);
mainLUVXY('cs484_hw3_data/135069.jpg', 'cs484_hw3_data/135069_seg.png', params);
mainLUVXY('cs484_hw3_data/138078.jpg', 'cs484_hw3_data/138078_seg.png', params);
mainLUVXY('cs484_hw3_data/153077.jpg', 'cs484_hw3_data/153077_seg.png', params);
mainLUVXY('cs484_hw3_data/176035.jpg', 'cs484_hw3_data/176035_seg.png', params);

mainLUVXY('cs484_hw3_data/183055.jpg', 'cs484_hw3_data/183055_seg.png', params);
mainLUVXY('cs484_hw3_data/238011.jpg', 'cs484_hw3_data/238011_seg.png', params);
mainLUVXY('cs484_hw3_data/299091.jpg', 'cs484_hw3_data/299091_seg.png', params);
mainLUVXY('cs484_hw3_data/353013.jpg', 'cs484_hw3_data/353013_seg.png', params);
mainLUVXY('cs484_hw3_data/385028.jpg', 'cs484_hw3_data/385028_seg.png', params);

