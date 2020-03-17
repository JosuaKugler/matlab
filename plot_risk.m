function []  = plot_risk(max_k, X, Y, Xtest, Ytest)
x = [];
y = [];
for i = 1:max_k
    j = 2*i-1;
    x = [x,j];
    [pred, risk] = h_knn(X,Y,Xtest,Ytest,j);
    y = [y,risk];
    plot(x,y)
end