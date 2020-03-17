function [sums] = svm_InfluentalPixels(X,Xtest,Ytest,alphas)
istart = 57;
iend = 57;
sums = zeros(iend,1);
for i = istart:iend
    i
    image = Xtest(i,:);
    y = Ytest(i);
    if y == 1
        4;
    else
        7;
    end
    before = classify_kernel(alphas,2,X,image);
    if y == sign(before)
        newimage = image;
        n = 0;
        while sign(classify_kernel(alphas,2,X,newimage)) == y
            n = n+1;
            newimage = svm_change(X, image, y, alphas, n);
            sum = size(newimage(newimage~=image),2);
        end
        sums(i) = sum;
        plotImage(image,newimage);
    end
end
end