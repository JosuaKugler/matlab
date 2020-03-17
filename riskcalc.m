function risk = riskcalc(X,Y,w)
    [m,n] = size(X);
    risk = 0;
    for i = 1:m
        if sign(dot(w,X(i,:))) ~= sign(Y(i))
            risk = risk + 1;
        end
    end
    risk = risk/m;
end