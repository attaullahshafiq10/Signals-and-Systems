% Script : ex_4_17.m
%
% Set signal parameters "A" and "tau".
A = 1;
tau = 1;
% Create a vector of time instants and compute the signal.
t = [-5:0.01:5];
x = (A+A*t/tau).*((t>=-tau)&(t<0))+(A-A*t/tau).*((t>=0)&(t<tau));
% Create a vector of frequency values.
f = [-5:0.01:5];
% Compute the transform.
tmp = sinc(f*tau);
Xf = A*tau*tmp.*tmp;
% Graph the transform.
plot(f,Xf);
xlabel('f (Hz)');
title('X(f)');
grid;