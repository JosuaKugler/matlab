function [alphas, risk] = test_svm(X,Y,n)
m = size(X,1);
alphas = zeros(1,m);
G = (X*X'+ones(m,m)).^n;

for i = 1:10*m
    t = randi(m);
    product = alphas*G;
    if 1 >Y(t)*product(t)
        alphas(t) = alphas(t) + Y(t)/sqrt(i);
    end
end
risk = 0;
for t = 1:m
    G = (X*X'+ones(m,m)).^n;
    product = alphas*G;
    if 1 >Y(t)*product(t)
        risk = risk + 1;
    end
end
risk = risk/m;
show_kernel_pred(X,Y,n,alphas);
end