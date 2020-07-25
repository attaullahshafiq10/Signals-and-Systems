% Script: ex_8_39a.m
%
% Create vectors for the numerator and the denominator of H(z).
num = [1,3,2];          % Numerator coefficients.
den = [1,-2.3,2,-1.2];  % Denominator coefficients.
% Compute zeros and poles of H(z).
zer = roots(num)
pol = roots(den)
% Pole-zero plot.
clf;
zplane(num,den);