function show_kernel_pred(X,Y,n,alphas)
    plot(X(Y==1,1),X(Y==1,2),'+','markeredgecolor','b','markersize',7,'linestyle','none','linewidth',1.5);
    hold on;
    plot(X(Y==-1,1),X(Y==-1,2),'o','markeredgecolor','r','markersize',7,'linestyle','none','linewidth',1.5);
    minx = min(X(:,1));
    maxx = max(X(:,1));
    miny = min(X(:,2));
    maxy = max(X(:,2));
    X_range = minx:0.05:maxx;
    Y_range = miny:0.05:maxy;
    Z = zeros(length(X_range),length(Y_range));
    axis([minx maxx miny maxy]);
    for i=1:length(X_range)
        for j=1:length(Y_range)
            Z(i,j) = alphas*((([X_range(i) Y_range(j)]*X')+ones(1,size(X,1))).^n)';
        end
    end
    [A,B] = meshgrid(Y_range,X_range);
    contour(B,A,Z,[0 0],'k');
    hold off;

end