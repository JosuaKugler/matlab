function w = SVM(X,Y,n_iterations)
    [m,n] = size(X);
    w = ones(1,n);
    for step = 1:n_iterations
        i = randi(m);
        constant = 1-Y(i)*dot(w,X(i,:));
        if constant >0
            g = -Y(i)*X(i,:);
        else
            g = zeros(1,n);
        end
        w = w - 1/sqrt(step)*g;
    end
end