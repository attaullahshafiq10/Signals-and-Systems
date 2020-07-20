% Script: ex_5_4b.m
%
% Find the DTFS coefficients
Omega0 = 2*pi/5;   % Fundamental angular frequency in radians
k = [0:4];
c = 1/5*(exp(-j*Omega0*k)+2*exp(-j*Omega0*2*k)+...
  3*exp(-j*Omega0*3*k)+4*exp(-j*Omega0*4*k));
% To verify, construct the signal x[n] from DTFS coefficients
n = [-12:15];
x = zeros(size(n));
for k=0:4,
  x = x+c(k+1)*exp(j*k*Omega0*n);
end;
clf;
stem(n,real(x));
axis([-12.5,15.5,-1,5]);
xlabel('Sample index');
ylabel('Amplitude');
title('x[n]');