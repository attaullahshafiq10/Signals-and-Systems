% Script : matex_3_8.m
%
% Create a vector with the impulse response of length-50 moving average filter.
h = 1/50*ones(1,50);
% Load data file.
load 'djia.mat';
% Create input vector "x".
x = [x2002(204:252),x2003];
% Compute the output signal using function conv(...).
y = conv(h,x);
% Prune and graph the output signal.
y = y(50:301);
plot([0:251],x2003,':',[0:251],y,'-');
xlabel('Sample index');
title('Input and output signals of the length-50 moving average filter');