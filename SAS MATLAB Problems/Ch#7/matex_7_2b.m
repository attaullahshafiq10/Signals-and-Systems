% Script: matex_7_2b.m
%
num = [1,0.5];        % Numerator of X(s).
den = [1,1,39.7284];  % Denominator of X(s).
omg = [-15:0.05:15];  % Vector of radian frequencies.
% Use function freqs() to compute the Fourier transform.
Xomg = freqs(num,den,omg);
% Graph the magnitude and the phase of the Fourier transform.
clf;
subplot(2,1,1);
plot(omg,abs(Xomg));
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
grid;
subplot(2,1,2);
plot(omg,angle(Xomg));
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle H(\omega)');
grid;