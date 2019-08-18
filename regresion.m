clear ; close all; clc
data = csvread('average_tourdefrance_speeds_1903_2018.csv')
data(1,:) = [];
X = data(:, 1)
m = length(X)

y = data(:,2)
theta = zeros(2,1)
iterations = 11900;  % Iterations needed for Gradient Descent
alpha = 0.41;  

plot(X, y, 'rx', 'MarkerSize', 10);
title('Training Examples');
xlabel('Año del tour de France / 1.96 = 1996');
ylabel('Velocidad Km/h');
% cost = funcCosto(X, y, theta, m)
XcostFunc = [ones(m, 1), X];
verdaderosTheta = gradienteDesc(theta, XcostFunc, y,alpha, m, iterations)
% funcCosto(X, y, verdaderosTheta', m)



% plot(X, y, 'rx', 'MarkerSize', 10);
% title('Training Examples');
hold on;
newY = XcostFunc * verdaderosTheta;
plot(X, newY, '-');
hold off
fprintf('para el 2020 nosotros predecimos una velocidad de %f\n',...
    [1, 2.020] * verdaderosTheta);