function [pred,risk] = multiclass_knn(X, Y, Xtest, Ytest, k, dim)
%Multiclass knn algorithm for MNSIT dataset
%   pred is the prediction it returns, risk is obvious
%   X,Y are the training_set, Xtest, Ytest are the testset, k is the number
%   of neighbours, dim is the dimension of the norm
[m,~] = size(Xtest);
X = double(X);
Y = double(Y);
Ytest = double(Ytest);
Xtest = double(Xtest);
pred = double(ones(m,1));
risk = 0;
weightmatrix = double(ones(k,10));
for j = 1:k
    weightmatrix(j,:) = k+1-j;
end

[~, maxindices] = max(Ytest,[], 2);
maxindices = maxindices-1;

for i = 1:m
    i
    diff = double(X - Xtest(i,:));
    diff = double(diff.^dim);
    dist = double(sum(diff, 2));
    dist = nthroot(dist,dim);
    newdist = [dist Y];
    newdist = double(sortrows(newdist));
    
    knn = double(newdist(1:k,2:11));
    knn = knn.*weightmatrix;
    vector = double(sum(knn, 1));
    [~, index] = max(vector);
    pred(i) = index-1;
    if pred(i) ~= maxindices(i)
        risk = risk + 1;
    end
end
risk = risk/m;
end