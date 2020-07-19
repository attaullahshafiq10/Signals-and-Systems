% Script : matex_2_3b.m
%
% Anonymous function for unit-step response.
yu = @(t) (1-exp(-4*t)).*(t>=0);
t = [-5:0.01:5];              % Vector of time instants. 
y2 = yu(t)-2*yu(t-1)+yu(t-2); % Compute response to x2(t)].
plot(t,y2);