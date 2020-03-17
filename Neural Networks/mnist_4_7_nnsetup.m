load mnist_4_7.mat;

train_x = X;
test_x = Xtest;
train_y = Y;
test_y = Ytest;


train_x = double(train_x) / 255;
test_x  = double(test_x)  / 255;
train_y = double(train_y);
test_y  = double(test_y);

% normalize
[train_x, mu, sigma] = zscore(train_x);
test_x = normalize(test_x, mu, sigma);
nn = nnsetup([784 10 10 2]);
nn.learningRate = 1;
nn.scaling_learningRate = 1;
nn.activation_function = 'sigm';
nn.output = 'sigm';
nn.momentum = 0.9;
nn.training_print = 1;
opts.numepochs = 15;
opts.batchsize = 100;
opts.plot = 0;
nn = nntrain(nn, train_x, train_y, opts, test_x, test_y);
nn