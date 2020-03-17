function show_quad_perc(X,Y,W,b)
    plot(X(Y==1,1),X(Y==1,2),'+','markeredgecolor','b','markersize',7,'linestyle','none','linewidth',1.5);
    hold on;
    plot(X(Y==-1,1),X(Y==-1,2),'o','markeredgecolor','r','markersize',7,'linestyle','none','linewidth',1.5);
    
    [A,B] = meshgrid(-5:0.01:5, -5:0.01:5);
    axis([-5,5,-5,5])
    contour(-5:0.01:5,-5:0.01:5,W(end,1)*A.^2 + W(end,2)*B.^2 + W(end,3)*(A.*B) + W(end,4)*A + W(end,5)*B + W(end,6)*ones(size(A)),[0 0]);
    hold off;
end