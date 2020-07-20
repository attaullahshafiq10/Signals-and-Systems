% Script: matex_5_7.m
%
% Create a length-N signal.
n = [0:9];
x = [0,2,3,4,4.5,3,1,-1,2,1]
% Circularly shift the signal by m=3 samples.
x1 = ss_cshift(x,3)
% Circularly shift the signal by m=-2 samples
x2 = ss_cshift(x,-2)
% Circular shift by m=10 should keep the signal unchanged.
x3 = ss_cshift(x,10)
% Circular time reversal of the signal.
x4 = ss_crev(x)