% Script: matex_10_4a.m
%
% Set design parameters.
omg1 = 3;
omg2 = 4;
Rp = 1;
As = 30;
% Determine filter order using the function cheb1ord().
N = cheb1ord(omg1,omg2,Rp,As,'s')
% Design the filter using function cheby1().
[num,den] = cheby1(N,Rp,omg1,'s')