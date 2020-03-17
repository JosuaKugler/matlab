function phiX=phi(X)
    phiX=[X(:,1).^2, X(:,2).^2, (X(:,1).*X(:,2)), X(:,1), X(:,2), ones(size(X(:,1)))];
end