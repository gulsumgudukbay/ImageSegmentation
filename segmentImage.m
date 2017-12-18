function [labels, peaks] = segmentImage(image, params)
% figure;
% imshow(image);

%convert to luvxy
xyz = rgb2xyz(image);
luv_cform = makecform('xyz2uvl');
image = applycform(xyz, luv_cform);

[rows, cols, dim] = size(image);
image = double(image);
data = zeros(rows * cols, dim);
peaks = [];
labels = zeros(rows * cols, 1);

data = reshape(image, rows*cols, dim);
tree = createns(data); %makes the search faster
noOfLabels = 0;

for i=1:rows*cols
    
    if(labels(i) == 0) %not visited
        %get the data indices that are inside the window close to cur pixel
        neighbors = [];
        neighbors = rangesearch(tree, data(i,:), params(1));
        neighbors = neighbors{1};
        %find peak of current pixel
        curPeak = meanshift(data, i, params);
        if (isempty(peaks))
            noOfLabels = noOfLabels + 1;
            peaks(noOfLabels,:) = curPeak(:);
            labels(i) = noOfLabels; %CHECK INDICES
            
            labels(neighbors) = noOfLabels; %CHECK
        end
        [noOfPeaks dimPeaks] = size(peaks);
        merged = 0;
        %check if it can be merged
        for p=1:noOfPeaks
            if(noOfPeaks > 1 && norm(curPeak - peaks(p)) <= params(1)/2) %merge!
                peaks(p,:) = (peaks(p,:) + curPeak)/2; %new mean for merged peaks
                labels(i) = p; %CHECK
                labels(neighbors) = p; %CHECK
                merged = 1;
            end
        end
        if(~merged)%new peak, create new label
            noOfLabels = noOfLabels + 1;
            peaks(noOfLabels,:) = curPeak(:);
            labels(i) = noOfLabels; %CHECK INDICES
            labels(neighbors) = noOfLabels; %CHECK
        end
    end
end

labels = reshape(labels, rows, cols);

end
