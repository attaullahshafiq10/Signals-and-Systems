% Script: matex_8_3b.m
%
% Create vectors for the numerator and the denominator of X(z).
num = [0,1,0,-0.5,0.5];
den = [1,-0.5,-0.5,-0.6,0.6];
% Graph zeros and poles.
clf;
zplane(num,den);