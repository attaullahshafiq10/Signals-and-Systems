% Script: ex_5_41.m
%
% Create vectors for the two signals.
x = [1,3,2,-4,6];
h = [5,4,3,2,1];
% Compute the circular convolution.
y = ifft(fft(x).*fft(h))
% Compute the linear convolution.
yl = conv(x,h)