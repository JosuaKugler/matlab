%   Plot 48 digits from the mnist database starting at index k
function show_mnist_data(X, k)
    figure(1); 
    for i=k:(k+47), subplot(6,8,i-k+1);
        imshow(reshape(X(i,:)',28,28)');
        colormap(gray);
    end
end