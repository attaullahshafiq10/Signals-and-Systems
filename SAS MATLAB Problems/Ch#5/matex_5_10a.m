% Script: matex_5_10a.m
%
x = [1,3,2,-4,6];  % Signal x[n]
h = [5,4,3,2,1];   % Signal h[n]
Xk = fft(x);       % DFT of x[n]
Hk = fft(h);       % DFT of y[n]
Yk = Xk.*Hk;       % Eqn.(5.296)
y = ifft(Yk)