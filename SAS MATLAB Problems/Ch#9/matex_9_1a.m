% Script: matex_9_1a.m
%
num = [1,1,-2];  % Vector of numerator coefficients.
den = [1,6,5];   % Vectors of denominator coefficients.
% Convert to state-space form using function tf2ss(...).
[A,B,C,d] = tf2ss(num,den)