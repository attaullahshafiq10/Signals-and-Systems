% Script: matex_10_12a.m
%
% Generate samples of length-25 Bartlett window.
wn = bartlett(25);
% Compute the impulse response of the FIR filter.
hn = fir1(24,[0.4,0.7],wn)