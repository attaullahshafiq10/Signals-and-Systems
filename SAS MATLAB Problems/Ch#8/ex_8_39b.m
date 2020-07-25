% Script: ex_8_39b.m
%
% Create vectors for the numerator and the denominator of H(z).
num = [1,3,2];          % Numerator coefficients.
den = [1,-2.3,2,-1.2];  % Denominator coefficients.
% Find the first 10 samples of the impulse response h[n] using
% function ss_longdiv(...) developed in MATLAB Exercise 8.6.
h = ss_longdiv(num,den,10)