% Script : ex_4_32.m
%
% Set signal parameters "a" and "b".
a = 2.75;
b = 3.25;
% Compute signal parameters "tau" and "lambda".
tau = b-a;
lambda = (a+b)/2;
% Create a vector of frequencies.
f = [-3:0.01:3];
% Compute the transform.
Xf = 2*lambda*sinc(f*tau).*sinc(2*f*lambda);
% Graph the transform.
clf;
plot(f,Xf);
xlabel('f (Hz)');
title('X(f)');
grid;