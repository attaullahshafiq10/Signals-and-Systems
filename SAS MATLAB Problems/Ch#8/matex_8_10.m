% Script: matex_8_10.m
%
% Create vectors for the numerator and the denominator of H(z).
num = [0,1,0,-7,6];
den = [1,-1,-0.34,0.966,-0.2403];
% Convert rational system function to zero-pole format.
[z,p,k] = tf2zp(num,den)
% Break into second-order sections (sos).
[sos,G] = zp2sos(z,p,k)