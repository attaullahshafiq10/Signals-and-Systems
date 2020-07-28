% Script: matex_10_8a.m
%
% Set numerator and denominator polynomials for the analog prototype.
num = [0.6250];
den = [1,1.1542,1.4161,0.6250];
% Convert the analog prototype to a discrete-time filter using impulse invariannce.
T = 0.2;
[numz,denz] = impinvar(num,den,1/T)