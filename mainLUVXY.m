function mainLUVXY = mainLUVXY(name, nameseg, params)

img = imread(name);
[labels, peaks] = segmentImageLUVXY(img, params);

%figure;
rgb = label2rgb(labels);
%imshow(rgb);

rgb = rgb2gray(rgb);
edge_rgb = edge(rgb,'Canny');
%figure;
%imshow(edge_rgb);

%true detected edges
%figure;
img_seg = imread(nameseg);
%imshow(label2rgb(img_seg));

img_seg = rgb2gray(label2rgb(img_seg));
edge_img_seg = edge(img_seg,'Canny');

se = strel('disk', 2);
edge_img_seg = imdilate(edge_img_seg, se);
%figure;
%imshow(edge_img_seg);

%mark the detected edges on the original image
markedimg = img;
[rows, cols, dim] = size(img);
for i=1:rows
    for j=1:cols
        if(edge_rgb(i,j))
            markedimg(i,j,1) = 255;
        end
    end
end

h = figure;
name2 = extractAfter(extractBefore(name, '.'), '/');
mytitle = sprintf('final_parameter_results/spectral_spatial-%s-%.3f-%.3f', name2, params(1), params(2));
imshow(markedimg);
title(mytitle);
mytitle = strcat(mytitle, '.png');
saveas(h, mytitle);

%precision calculations
true_detected_boundary_pixels = nnz(edge_rgb & edge_img_seg);
no_of_detected_boundary_pixels = nnz(edge_rgb);
no_of_true_boundary_pixels_ground_truth = nnz(edge_img_seg);

precision = true_detected_boundary_pixels / no_of_detected_boundary_pixels;
recall = true_detected_boundary_pixels / no_of_true_boundary_pixels_ground_truth;

fprintf('precision: %f\nrecall: %f\n', precision, recall);

end