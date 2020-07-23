% Script: ex_7_5a.m
%
% Define an anonymous function for the signal.
x = @(t,a) exp(a*t).*(t>=0);
% Create a vector of time instants.
t = [-1:0.01:4];
% Compute x(t) for a=-0.5
x1 = x(t,-0.5);
% Compute x(t) for a=0.7
x2 = x(t,0.7);
% Graph the two signals.
clf;
subplot(2,1,1);
plot(t,x1);
xlabel('t');
title('x(t) with a=-0.5');
subplot(2,1,2);
plot(t,x2);
xlabel('t');
title('x(t) with a=0.7');