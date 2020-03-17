function [positive,negative] = InfluentalPixels(weights,n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
topN = zeros(1,n);
pCounter = 1;
nCounter = 1;
positive = [];
negative = [];

for i = 1:size(weights,2)
    if abs(weights(i)) > abs(topN(n))
        topN(n) = weights(i);

        [temp,idx] = sort(abs(topN))


        topN = topN(fliplr(idx));

    end
    
end

for i = 1:n
    if topN(i) > 0
        positive(pCounter) = topN(i);
        pCounter = pCounter + 1;
    else
        negative(nCounter) = topN(i);
        nCounter = nCounter + 1;
    end
end

for i = 1: size(positive,2)
    positive(i) = find(weights == positive(i));
end
for i = 1: size(negative,2)
    negative(i) = find(weights == negative(i));
end


end

