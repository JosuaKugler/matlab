function w = GD()
    w = [1,1];
    g = [1,1];
    i = 1;
    m = 10^4;
    epsilon = 10^(-6);
    while norm(w)^2 > epsilon
        g = [0,0];
        for k = 1:m
            g = g + [2*(w(1)+cos((2*pi*k)/m)), 2*(w(2)+sin((2*pi*k)/m))];
        end
        w = w - (1/sqrt(i))*1/m*g;
        i = i+1;
    end
end