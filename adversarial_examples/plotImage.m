function plotImage(orig,new)
%toPlot = reshape(myImage,[28,28])';
figure(1);

orig = orig/255;
new = new/255;

subplot(1,2,1);
imshow(reshape(orig',28,28)');
colormap(gray);

subplot(1,2,2);
imshow(reshape(new',28,28)');
colormap(gray);

%image(toPlot);

end


