% Given two-dimensional data X and classifications Y, plot the data
function [] = show_2d_data(X,Y)
    plot(X(Y==1,1),X(Y==1,2),'+','markeredgecolor','b','markersize',7,'linestyle','none','linewidth',1.5);
    hold on;
    plot(X(Y==-1,1),X(Y==-1,2),'o','markeredgecolor','r','markersize',7,'linestyle','none','linewidth',1.5);
    hold on;
    plot(X(Y==0,1),X(Y==0,2),'*','markeredgecolor','y','markersize',7,'linestyle','none','linewidth',1.5);
    hold off;
end
