% Script: matex_9_1b.m
%
num = [1,1,-2];  % Vector of numerator coefficients.
den = [1,6,5];   % Vectors of denominator coefficients.
% Convert system to state-space form using function ss_t2s(...).
[A,B,C,d] = ss_t2s(num,den)