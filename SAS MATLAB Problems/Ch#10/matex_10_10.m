% Script: matex_10_10.m
%
% Set design parameters.
T = 1;
Omg1 = 0.2*pi;
Omg2 = 0.36*pi;
Rp = 2;
As = 20;
% Determine the minimum filter order and the critical frequency.
[N,Omgc] = buttord(Omg1/pi,Omg2/pi,Rp,As)
% Design the filter using the function butter().
[numz,denz] = butter(N,Omgc)