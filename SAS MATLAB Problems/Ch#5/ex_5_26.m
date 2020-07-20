% Script: ex_5_26.m
%
% Define an anonymous function for x[n].
x = @(n) 3*cos(0.2*pi*n);
% Find the autocorrlation function value for m=1.
n = [0:9];
rxx1 = sum(x(n).*x(n+1))/10
% Find the autocorrlation function value for m=2.
rxx2 = sum(x(n).*x(n+2))/10