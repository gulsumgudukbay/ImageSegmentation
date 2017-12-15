function [labels, peaks] = segmentImage(image, params);
figure;
imshow(image);

% xyz = rgb2xyz(img);
% luv_cform = makecform('xyz2uvl');
% luv_img = applycform(xyz, luv_cform);
% figure;
% imshow(luv_img);

%call mean shift
%merge peaks if they are close to eachother <= r/2

[rows, cols, dim] = size(image);
image = double(image);
data = double(zeros(rows * cols, dim));
peaks = zeros(rows * cols, 1);
labels = zeros(size(image));

for i=1:rows
    for j=1:cols
        for k=1:dim
            data((i - 1) * cols + j, k) = image(i, j, k);
        end
    end
end

for i=1:rows*cols
    peaks(i) = meanshift(data, i, params);
end

for i=