% Script : matex_2_3a.m
%
% Anonymous function for unit-step response.
yu = @(t) (1-exp(-4*t)).*(t>=0);
t = [-5:0.01:5];             % Vector of time instants. 
y1 = yu(t+0.5)-yu(t-0.5);    % Compute response to x1(t).
plot(t,y1);