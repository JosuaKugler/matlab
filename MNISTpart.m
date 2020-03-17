function [Xpart, Ypart, Xtestpart, Ytestpart] = MNISTpart(X,Y,Xtest,Ytest)
Xpart = X(1:10000,:);
Ypart = Y(1:10000,:);
Xtestpart = Xtest(1:1000,:);
Ytestpart = Ytest(1:1000,:);
end