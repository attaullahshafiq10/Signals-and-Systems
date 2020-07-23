% Script: ex_7_9.m
%
% Define an anonumous function for the two-sided exponential signal.
x = @(t,a) exp(a*t).*(t>=0)+exp(-a*t).*(t<0);
% Create a vector of time instants.
t = [-4:0.01:4];
% Evaluate x(t) for a=-1.
xt = x(t,-1);
% Graph the signal.
clf;
plot(t,xt);
xlabel('t');
title('x(t)');
grid;