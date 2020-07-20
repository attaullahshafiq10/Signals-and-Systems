% Script: ex_5_38.m
%
% Create the two length-4 signals "g" and "h".
g = [11,-2,7,9]
h = [6,14,-13,8]
% Construct the complex signal "x".
x = g+j*h
% Compute the DFT of "x".
Xk = fft(x)
% Find conjugate symmetric and antisymmetric components.
XE = 0.5*(Xk+conj(ss_crev(Xk)))
XO = 0.5*(Xk-conj(ss_crev(Xk)))
% Find transforms of "g" and "h" and invert each to verify.
Gk = XE
Hk = -j*XO
ifft(Gk)   % Should be the same as vector "g"
ifft(Hk)   % Should be the same as vector "h"