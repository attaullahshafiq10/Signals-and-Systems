% Script: ex_8_26.m
%
% Set value of parameter.
a = 0.7;
% Create a vector of sample indices.
n = [-5:25];
% Compute the cross correlation.
rxy = a.^n.*(n>=0)+a.^(n+1).*(n>=-1)+a.^(n+2).*(n>=-2);
% Graph the cross correlation.
clf;
stem(n,rxy);
axis([-5.5,25.5,-1,3]);
xlabel('n');
title('r_{xy}[n]');