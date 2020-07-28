% Script: matex_10_1b.m
%
% Butterworth analog highpass filter with N=-4 and omegac=3 rad/s.
[num,den] = butter(4,3,'high','s')
% Set a vector of radian frequencies and compute the frequency response.
omg = [-10:0.01:10];
H = freqs(num,den,omg);
% Graph the magnitude and the phase of the frequency response.
clf;
subplot(2,1,1);
plot(omg,abs(H));
axis([-10,10,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
grid;
subplot(2,1,2);
plot(omg,angle(H));
axis([-10,10,-pi,pi]);
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle H(\omega)');
grid;