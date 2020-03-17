function w = SGD()
    w = [1,1];
    g = [1,1];
    i = 1;
    m = 10^6;
    batch = 1000;
    epsilon = 10^(-6);
    while norm(w)^2 > epsilon
        randlist = randi(m,batch,1);
        g = [2*(w(1)+cos((2*pi*randlist)/m)), 2*(w(2)+sin((2*pi*randlist)/m))];
        avg = mean(g);
        w = w - (1/sqrt(i))*avg;
        i = i+1;
        w
        
    end
end