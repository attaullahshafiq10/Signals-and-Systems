% Script: matex_10_11a.m
%
% Set design parameters.
Omg1 = 0.2*pi;
Omg2 = 0.26*pi;
Omg3 = 0.48*pi;
Omg4 = 0.54*pi;
Rp = 1;
As = 25;
F1 = 0.1;
F2 = 0.13;
F3 = 0.24;
F4 = 0.27;
% Find the minimum filter order using the function cheb1ord().
N = cheb1ord([2*F2,2*F3],[2*F1,2*F4],Rp,As)
% Design the Chebyshev type-I lowpass filter using the function cheb1().
[numz,denz] = cheby1(N,Rp,[2*F2,2*F3])