function w = perceptron(X,Y,n_iterations)
    [e,d] = size(X);
    w = zeros(1,d);
    for i = 1:n_iterations
        for t = 1:e
            if Y(t)*dot(X(t, :),w) <= 0
                w = w + Y(t)*X(t, :);
            end
        end
    end
end