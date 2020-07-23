% Script: matex_6_2a.m
%
% Create a vector of time instants.
t = [-5:0.01:5];
% Define an anonymous function for the signal.
xa = @(t) exp(-abs(t));
% Set sampling rate and sampling interval.
fs = 2;
Ts = 1/fs;
% Create a vector of sample indices.
n = [-15:15];
% Sampling relationship.
xn = xa(n*Ts);
% Graph the signals.
clf;
subplot(2,1,1);
plot(t,xa(t));
xlabel('t');
title('Signal x_{a}(t)');
grid;
subplot(2,1,2)
stem(n,xn);
xlabel('n');
title('Signal x[n]');