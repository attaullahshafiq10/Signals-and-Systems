% Script: matex_8_7a.m
%
Omega = 0.3*pi;
z = exp(j*Omega);
B = z+0.6;
A = z-0.8;
mag = abs(B)/abs(A)
phs = angle(B)-angle(A)