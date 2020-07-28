% Script: matex_10_5a.m
%
% Set design parameters.
omg1 = 3;
omg2 = 4;
Rp = 1;
As = 30;
% Determine filter order.
N = cheb2ord(omg1,omg2,Rp,As,'s')
% Design the filter using function cheby2().
[num,den] = cheby2(N,As,omg2,'s')