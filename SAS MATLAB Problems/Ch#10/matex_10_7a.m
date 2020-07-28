% Script: matex_10_7a.m
%
% Redesign the Chebyshev lowpass filter of MATLAB Exercise 10.3.
omgL1 = 1;
epsilon = 0.4;
Rp = 10*log10(1+epsilon^2);
[num,den] = cheby1(3,Rp,omgL1,'s')
% Convert to a bandpass filter using function lp2bp().
omgB2 = 1.5
omgB3 = 2.5;
omg0 = sqrt(omgB2*omgB3);
B = (omgB3-omgB2)/omgL1;
[numb,denb] = lp2bp(num,den,omg0,B)
% Create a vector of radian frequencies.
omg = [-10:0.01:10];
% Compute the frequency response of the bandpass filter.
H = freqs(numb,denb,omg);
% Graph the magnitude of the frequency response of the bandpass filter.
clf;
plot(omg,abs(H));
axis([-10,10,0,1.1]);
xlabel('\omega  (rad/s)');
ylabel('Magnitude');
title('|H(\omega)| for the bandpass filter');
grid;