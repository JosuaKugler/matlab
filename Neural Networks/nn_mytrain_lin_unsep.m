load lin_unsep_data.mat;
train_x = X(1:70,:);
test_x = X(70:100,:);
train_y = Y(1:70,:);
test_y = Y(70:100,:);

train_x = double(train_x) / 255;
test_x  = double(test_x)  / 255;
train_y = double(train_y);
test_y  = double(test_y);

% normalize
[train_x, mu, sigma] = zscore(train_x);
test_x = normalize(test_x, mu, sigma);
nn = nnsetup([2 5 4 1]);
nn.learningRate = 1;
nn.scaling_learningRate = 1;
nn.activation_function = 'sigm';
nn.output = 'sigm';
nn.momentum = 0.9;
nn.training_print = 100;
opts.numepochs = 3000;
opts.batchsize = 10;
%opts.plot = 1;
nn = nntrain(nn, train_x, train_y, opts, test_x, test_y);
show_nn_pred(nn,train_x,train_y);
nn