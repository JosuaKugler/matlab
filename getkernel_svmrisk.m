function risk = getkernel_svmrisk(X,Y,n,alphas)
m = size(X,1);
G = (X*X'+ones(m,m)).^n;
risk = 0;
for t = 1:m
    product = alphas*G;
    if 1 >Y(t)*product(t)
        risk = risk + 1;
    end
end
risk = risk/m;
end