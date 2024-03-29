function [labels, peaks] = segmentImageLUVXY(image, params)
%figure;
%imshow(image);

%convert to luvxy
xyz = rgb2xyz(image);
luv_cform = makecform('xyz2uvl');
image = applycform(xyz, luv_cform);
[rows, cols, dim] = size(image);

for i=1:rows
    for j=1:cols
        image(i,j,4) = i/rows*0.1;
        image(i,j,5) = j/cols*0.1;
    end
end


[rows, cols, dim] = size(image);
image = double(image);
data = zeros(rows * cols, dim);
peaks = [];
labels = zeros(rows * cols, 1);

data = reshape(image, rows*cols, dim);
treeLUV = createns(data(:, 1:2)); %makes the search faster
treeXY = createns(data(:, 4:5)); %makes the search faster
noOfLabels = 0;

for i=1:rows*cols
    
    if(labels(i) == 0) %not visited
        %get the data indices that are inside the window close to cur pixel
        neighborsLUV = [];
        neighborsLUV = rangesearch(treeLUV, data(i,1:2), params(1));
        neighborsLUV = neighborsLUV{1};
        
        neighborsXY = [];
        neighborsXY = rangesearch(treeXY, data(i,4:5), params(2));
        neighborsXY = neighborsXY{1};
        
        [neighbors,ia,ib] = intersect(neighborsLUV, neighborsXY);
        
        %find peak of current pixel
        curPeak = meanshiftLUVXY(data, i, params);
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
            if(noOfPeaks > 1 && norm(curPeak(1:2) - peaks(p, 1:2)) <= params(1)/2 && norm(curPeak(4:5) - peaks(p, 4:5)) <= params(2)/2) %merge!
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
