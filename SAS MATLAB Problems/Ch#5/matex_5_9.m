% Script: matex_5_9.m
%
% Create two length-10 signals.
n = [0:9];
g = rand(1,10)
h = rand(1,10)
% Create a complex signal and compute its DFT.
x = g+j*h;       % Construct complex signal.
Xk = fft(x);     % Compute DFT.
% Compute the two components of the DFT.
XE = 0.5*(Xk+conj(ss_crev(Xk)));
XO = 0.5*(Xk-conj(ss_crev(Xk)));
% Extract DFT's of the two signals.
Gk = XE;
Hk = -j*XO;
disp(ifft(Gk))   % Should be the same as vector 'g'.
disp(ifft(Hk))   % Should be the same as vector 'h'.