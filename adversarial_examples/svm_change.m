function x = svm_change(X, x, y, alphas, n)
Influencepixels = X'*alphas';
[~,idx] = sort(abs(Influencepixels));
idx = fliplr(idx');
idx = idx(1:n);

for i = 1:size(idx,2)
    index = idx(i);
    if y == 1
        if Influencepixels(index) > 0
            x(index) = 0;
        else
            x(index) = 255;
        end
    else
        if Influencepixels(index) > 0
            x(index) = 255;
        else
            x(index) = 0;
        end
    end
end
end