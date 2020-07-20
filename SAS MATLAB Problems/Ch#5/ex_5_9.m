% Script: ex_5_9.m
%
% Compute the DTFS coefficients for the signal "x"
Omega0 = 2*pi/5;
k=[0:4];
c = 1/5*(exp(-j*Omega0*k)+2*exp(-j*Omega0*2*k)+3*exp(-j*Omega0*3*k)+4*exp(-j*Omega0*4*k))
% Compute the DTFS coefficients of the signal "h"
d = 1/5*(3+3*exp(-j*Omega0*k)-3*exp(-j*Omega0*2*k)-2*exp(-j*Omega0*3*k)-exp(-j*Omega0*4*k))
% Find the DTFS for the signal "y" from the two sets of coefficients
e = 5*c.*d
% Construct the signal y from the DTFS coefficients, and graph it.
n = [-12:15];
y = zeros(size(n));
for k=0:4,
  y = y+e(k+1)*exp(j*Omega0*k*n);
end;
clf;
stem(n,y);