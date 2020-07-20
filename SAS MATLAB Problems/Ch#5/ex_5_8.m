% Script: ex_5_8.m
%
% "n" is the index for which the circular convolution result
% will be computed. Edit next line to try for various values of n.
n = 3;
% Set up the main period of the signal x[k]
k = [0:4];
x = [0,1,2,3,4]
% Set up the main period of the signal h[n-k]
hmk = ss_crev([3,3,-3,-2,-1]);   % Main period of h[-k]
hnmk = ss_cshift(hmk,n)          % Main period of h[n-k]
% Compute y[n]
yn = sum(x.*hnmk)