function [labels, peaks] = segmentImage(image, params)
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
data = zeros(rows * cols, dim);
peaks = [];
labels = zeros(rows, cols);

for i=1:rows
    for j=1:cols
        data((i - 1) * cols + j, :) = image(i, j, :);
    end
end
tree = createns(data); %makes the search faster
noOfLabels = 0;

for i=1:rows*cols
    
    %get the data indices that are inside the window close to cur pixel
    neighbors = [];
    neighbors = rangesearch(tree, data(i,:), params(1));
    neighbors = neighbors{1};
    
    if(labels(int8(i/rows)+1, mod(i,rows)+1) == 0) %not visited
        %find peak of current pixel
        curPeak = meanshift(data, i, params);
        if (isempty(peaks))
            noOfLabels = noOfLabels + 1;
            fprintf('noOfLabels: %d\n', noOfLabels);
            peaks(noOfLabels,:) = curPeak(:);
            labels(int8(i/rows)+1, mod(i,rows)+1) = noOfLabels; %CHECK INDICES
            for n=1:length(neighbors)
                fprintf('indices: %d,%d\n', int8(neighbors(n)/rows)+1, mod(neighbors(n),rows)+1);
                labels(int8(neighbors(n)/rows)+1, mod(neighbors(n),rows)+1) = noOfLabels; %CHECK
            end
        end
        [noOfPeaks dimPeaks] = size(peaks);
        %check if it can be merged
        for p=1:noOfPeaks
            if(noOfPeaks > 1 && norm(curPeak, peaks(p)) <= params(1)/2) %merge!
                peaks(p,:) = (peaks(p,:) + curPeak(:))./2; %new mean for merged peaks
                labels(int8(i/rows+1), mod(i,rows)+1) = p; %CHECK
                for n=1:length(neighbors)
                    labels(int8(neighbors(n)/rows)+1, mod(neighbors(n),rows)+1) = p; %CHECK
                end
            elseif(i > 1)%new peak, create new label
                noOfLabels = noOfLabels + 1;
                fprintf('noOfLabels: %d\n', noOfLabels);
                peaks(noOfLabels,:) = curPeak(:);
                labels(int8(i/rows)+1, mod(i,rows)+1) = noOfLabels; %CHECK INDICES
                for n=1:length(neighbors)
                    fprintf('indices: %d,%d\n', int8(neighbors(n)/rows)+1, mod(neighbors(n),rows)+1);
                    labels(int8(neighbors(n)/rows)+1, mod(neighbors(n),rows)+1) = noOfLabels; %CHECK
                end
            end
        end
    end
end

end
