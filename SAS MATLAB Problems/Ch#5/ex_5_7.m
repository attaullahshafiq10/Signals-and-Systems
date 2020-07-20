% Script: ex_5_7.m
%
% Create a vector for one period of the signal.
x = [0,0.5,1,0.75,0,-0.75,-1,-0.5];
% Create a vector of sample indices.
n = [-12:15];
% Graph the signal.
clf;
stem(n,ss_per(x,n));
axis([-12.5,15.5,-1.5,1.5]);
% Create a vector of harmonic indices.
k = [0:7];
% Compute DTFS coefficients.
ck = ss_dtfs(x,k)