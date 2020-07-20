% Script: ex_5_4a.m
%
% Find the DTFS coefficients
Omega0 = 2*pi/5;   % Fundamental angular frequency in radians
k = [0:4];
c = 1/5*(exp(-j*Omega0*k)+2*exp(-j*Omega0*2*k)+...
  3*exp(-j*Omega0*3*k)+4*exp(-j*Omega0*4*k))