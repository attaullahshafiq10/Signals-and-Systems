% Script : matex_3_7.m
%
% Create vectors for the signals h[n] and x[n].
h = [4,3,2,1];
x = [-3,7,4];
% Compute the convolution using function conv(...).
y = conv(h,x)
% Test function ss_conv(...).
[y,n] = ss_conv(h,x,5,7)
stem(n,y);