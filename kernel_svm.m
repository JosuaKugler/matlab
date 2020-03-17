function [pred, risk] = kernel_svm(X,Y,Xtest,Ytest,n)
m = size(X,1);
alphas = zeros(1,m);
G = (X*X'+ones(m,m)).^n;
risk = 0;
for i = 1:1000*m
    if mod(i,100) == 0
        risk
        i
        risk = 0;
    end
    t = randi(m);
    product = alphas*G;
    if 1 >Y(t)*product(t)
        alphas(t) = alphas(t) + Y(t)/sqrt(i);
        risk = risk + 1;
    end
end
pred = sign(((Xtest*X'+ones(size(Xtest,1),m)).^n)*alphas'+eps);
errors = pred ~= Ytest;
errors = sum(errors);
total = size(Xtest,1);
risk = errors/total;
end