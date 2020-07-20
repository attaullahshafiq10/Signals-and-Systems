% Script: ex_5_40.m
%
% Create vectors for the two signals.
x = [1,3,2,-4,6];
h = [5,4,3,2,1];
% Create a vector for the circular convolution result.
y = [24,31,33,5,27];
% Compute the DFT of each signal.
Xk = fft(x)
Hk = fft(h)
Yk = fft(y)
% Compute the product of the two DFTs.
Y2k = Xk.*Hk  % Should be the same as "Yk"