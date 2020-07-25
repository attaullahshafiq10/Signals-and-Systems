% Script: ex_8_39c.m
%
% Create vectors for the numerator and the denominator of H(z).
num = [1,3,2];          % Numerator coefficients.
den = [1,-2.3,2,-1.2];  % Denominator coefficients.
% Use the function filter(...) to compute the first 10 samples
% of the impulse response h[n].
h = filter(num,den,[1,0,0,0,0,0,0,0,0,0])