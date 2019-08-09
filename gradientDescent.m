function [theta, J_history] = gradientDescent(X, y, theta, alpha, numberOfIterations)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, numberOfIterations) updates theta by 
%   takin, numberOfIterations gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(numberOfIterations, 1);

% numberOfIterations = # of times to run gradient descent algorithm
for iter = 1:numberOfIterations
    % Perform a single gradient step on the parameter vector theta. 

    % we minimize the value of J(theta) by changing the values of the 
    % vector theta NOT changing X or y

    % alpha = learning rate as a single number

    % hypothesis = mx1 column vector
    % X = mxn column vector  m x n 列向量
    % theta = nx1 column vector n x 1列向量
    hypothesis = X * theta;

    % errors = mx1 column vector
    % y = mx1 column vector
    errors = hypothesis - y;

    % X_column1 = mx1 column vector
    X_column1 = X(:, 1);

    % X_column2 = mx1 column vector
    X_column2 = X(:, 2);

    theta(1, 1) = theta(1, 1) - (alpha * (1/m) * errors' * X_column1);%X0(i),(i)是指第几个数据，0是指x的第几个特征，向量化计算errors' * X_column1，中间的*
    theta(2, 1) = theta(2, 1) - (alpha * (1/m) * errors' * X_column2);%是矩阵的内积意思（两个向量对应分量乘积之和），

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
