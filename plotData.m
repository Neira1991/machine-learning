function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 

plot(x, y, 'rx', 'MarkerSize', 10); % Plot the data
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

ylabel('Velocidad'); % Set the y ? axis label
xlabel('Años'); % Set the x ? axis label

figure; % open a new figure window

end