function peak = meanshiftLUVXY(data, i, params)

[n, dim] = size(data);

%mean and deviation
h = std(data) * (4/3/n)^(1/5); % Silverman's rule of thumb (wiki)
phi = @(x)(exp(-.5 * x.^2) / sqrt(2 * pi)); % normal pdf (wiki)

treeLUV = createns(data(:, 1:2)); %makes the search faster
treeXY = createns(data(:, 4:5)); %makes the search faster

curLoc = data(i, :);

while 1
    
    %get the data indices that are inside the window
    insideWindowIndicesluv = rangesearch(treeLUV, curLoc(1:2), params(1));
    insideWindowIndicesluv = insideWindowIndicesluv{1};
    
    insideWindowIndicesxy = rangesearch(treeXY, curLoc(4:5), params(2));
    insideWindowIndicesxy = insideWindowIndicesxy{1};
    
    [insideWindowIndices,ia,ib] = intersect(insideWindowIndicesluv,insideWindowIndicesxy);
    
    %formula
    quotient = zeros(1, dim);
    divisor = zeros(1, dim);
    
    %gaussian mean calculation 
    %source: "Mean Shift: A Robust Approach toward Feature Space Analysis"
    for x=1:length(insideWindowIndices)
        kprime = phi(((curLoc - data(insideWindowIndices(x), :)) / h).^2);
        divisor = divisor + kprime;
        quotient = quotient + curLoc .* kprime;
    end
    
    mean = quotient ./ divisor;
    
    %if the current location's distance to the mean is smaller than the
    %stopping threshold, it has converged!
    if(norm(curLoc-mean) < params(3))
        break; %converged!
    end
    
    %translate the point to the mean
    curLoc = mean;
    
end

peak = mean;

end
