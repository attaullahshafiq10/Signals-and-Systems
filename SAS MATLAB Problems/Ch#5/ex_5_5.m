% Script: ex_5_5.m
%
% Compute DTFS spectrum for N=10 and L=2 (edit to try other combinations)
N = 10;
L = 2;
Omega0 = 2*pi/N;
k = [0:N-1];
c = sin(Omega0/2*(k+eps)*(2*L+1))./sin(Omega0/2*(k+eps));  % DTFS coefficients
% Compute the envelope (by allowing non-integer values of the index)
k2 = [-0.5:0.01:N-1+0.5];
env = sin(Omega0/2*(k2+eps)*(2*L+1))./sin(Omega0/2*(k2+eps));
clf;
plot(k2,env,'g--');
hold on;
stem(k,c);
hold off;
axis([-0.5,N-1+0.5,-2,6]);
xlabel('DTFS index  k');
title('DTFS coefficients and outline (envelope)');