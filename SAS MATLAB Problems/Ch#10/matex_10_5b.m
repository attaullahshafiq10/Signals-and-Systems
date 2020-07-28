% Script: matex_10_5b.m
%
% Set vectors for numerator and denominator polynomials.
num = [0,0.8859,0,113.393,0,3628.568,0,33175.476];
den = [1,18.0889,163.211,959.287,3933.072,11877.005,23394.266,33175.476];
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