% Script: matex_7_2a.m
%
% Define an anonymous function for the Laplace transform.
Xs = @(s) (s+0.5)./((s+0.5).^2+4*pi*pi);
omg = [-15:0.05:15];  % Vector of radian frequencies
% Compute the Fourier transform by evaluating X(s).
Xomg = Xs(j*omg);
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