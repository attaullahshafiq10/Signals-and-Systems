% Script: ex_8_24.m
%
% Define an anonymous function for h[n].
h = @(n) (0.9).^n.*(n>=0);
% Create a vector of sample indices.
n = [-5:35];
% Compute the response of the system to x[n]=u[n]-u[n-7].
y = h(n)+h(n-1)+h(n-2)+h(n-3)+h(n-4)+h(n-5)+h(n-6);
% Graph the response.
clf;
stem(n,y);
axis([-5.5,35.5,-2,8]);
xlabel('n');
title('y[n]');