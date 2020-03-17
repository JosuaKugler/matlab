function glist = twocGD()
    glist = []
    w = 1;
    g = 1;
    i = 0;
    m = 10;
    epsilon = 10^(-30);
    while g * g' > epsilon
        g
        i = i+1;
        %updating g
        g = 2*w + exp(w);
        %updating w
        eta = 1/sqrt(i);
        w = w - eta*g;
        glist = [glist, g];
    end
end