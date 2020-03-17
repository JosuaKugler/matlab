function [pred,risk] = h_knn(X, Y, Xtest, Ytest, k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[n,j] = size(X);
[m,l] = size(Xtest);

pred = ones(m,1);
risk = 0;
for i = 1:m
    diff = X - Xtest(i,:);
    diff = diff.^2;
    dist = diff * ones(j,1);
    dist = sqrt(dist);
    dist = [dist, Y];
    dist = sortrows(dist);
    
    knn = dist(1:k,:);
    if mean(knn(:,2)) > 0
        pred(i) = 1;
    else
        pred(i) = -1;
    end
    if pred(i) == Ytest(i)
        risk = risk + 1;
    end
end
risk = risk/m;
risk = 1-risk;
end