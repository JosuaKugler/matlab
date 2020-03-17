function show_linear_pred(X,Y,W)
    plot(X(Y==1,1),X(Y==1,2),'+','markeredgecolor','b','markersize',7,'linestyle','none','linewidth',1.5);
    hold on;
    plot(X(Y==-1,1),X(Y==-1,2),'o','markeredgecolor','r','markersize',7,'linestyle','none','linewidth',1.5);
    plot([-5,5],[-((W(end,1)*-5+W(end,3))/W(end,2)), -((W(end,1)*5+W(end,3))/W(end,2))],'k');
    hold off;
end