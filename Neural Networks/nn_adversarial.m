function nn_adversarial(nn, X,Y,i, h, epsilon)
x = X(i);
y = Y(i);
goal = -y
dim = size(x,2);
gradient = zeros(1,dim);
step = 0;
while loss(nn, x, goal) > epsilon
    step = step +1;
    g_x = loss(nn, x, goal);
    EYE = eye(dim);
    for i = 1:dim
        x = x + h*EYE(i,:);
        gradient(i) = (loss(nn, x, goal)-g_x)/h;
    end
    gradient;
    x = x - 1/sqrt(step)*gradient;
end
end