function show_image(index, Ytest, Xtest)
number = Ytest(index);
if number == -1
    number = 4;
else
    number = 7;
end
vector = Xtest(index,:);
figure('Name', 'hello');
imshow(reshape(vector,28,28));
colormap(gray);
end