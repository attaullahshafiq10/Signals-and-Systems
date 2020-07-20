% Script: ex_5_13.m
%
% Set the normalized cutoff frequency.
Fc = 1/9;
% Create a vector of indices.
n = [-20:20];
% Compute the signal x[n].
x = 2*Fc*sinc(2*Fc*n);
% Graph the signal x[n].
clf;
stem(n,x);
axis([-20.5,20.5,-0.1,0.3]);
xlabel('Sample index n'); 
ylabel('Amplitude');
title('x[n] (for F_{c}=1/9)');