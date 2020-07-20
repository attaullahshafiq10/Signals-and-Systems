% Script: ex_5_33.m
%
% Create a vector for the discrete-time pulse signal x[n].
x = ones(1,10);
% Compute the DFT of the signal x[n].
Xk = fft(x)
% Obtain the pulse signal back from its DFT.
ifft(Xk)