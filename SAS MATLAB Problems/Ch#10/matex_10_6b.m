% Script: matex_10_6b.m
%
% Set vectors for numerator and the denominator polynomials of the two filters.
num = [0,0,0,0.625];
den = [1,1.1542,1.4161,0.625];
numh = [1,0,0,0];
denh = [1,6.7971,16.6201,43.2];
% Create a vector of radian frequencies.
omg = [-7:0.01:7];
% Compute the frequency responses of the two filters.
Hlow = freqs(num,den,omg);
Hhigh = freqs(numh,denh,omg);
% Graph the magnitudes of the two frequency responses.
clf;
subplot(2,1,1);
plot(omg,abs(Hlow));
axis([-7,7,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)| for lowpass filter');
grid;
subplot(2,1,2);
plot(omg,abs(Hhigh));
axis([-7,7,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)| for highpass filter');
grid;