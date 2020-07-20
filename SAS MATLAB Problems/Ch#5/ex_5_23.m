% Script: ex_5_23.m
%
% Create a vector for one period of the signal x[n].
x = [0,0.5,1,0.75,0,-0.75,-1,-0.5];
% Compute the average signal power using one period of the signal.
Px = x*x'/8   % Use scalar product of a vector with its transpose
% Create a vector of harmonic indices.
k = [0:7];
% Compute DTFS coefficients.
ck = ss_dtfs(x,k)
% Compute the average signal power using DTFS coefficients.
Px = ck*ck'   % Use scalar product of a vector with its transpose