% Script: matex_10_3a.m
%
% Set design parameters.
N = 3;
omg1 = 1;
epsilon = 0.4;
Rp = 10*log10(1+epsilon^2);
% Design the filter using function cheby1().
[num,den] = cheby1(3,Rp,1,'s')