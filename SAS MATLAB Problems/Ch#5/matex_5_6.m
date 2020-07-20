% Script: matex_5_6.m
%
x = ones(1,10);    % Generate x[n].
Xk = fft(x,500);   % Compute 500-point DFT.
k = [0:499];       % DFT indices
Omega_k = 2*pi*k/500;   % Angular frequencies.
% Graph the magnitude and the phase of the DTFT.
clf;
subplot(211);
plot(Omega_k,abs(Xk)); grid;
title('|X(\Omega)|');
xlabel('\Omega (rad)');
ylabel('Magnitude');
axis([0,2*pi,-1,11]);
subplot(212);
plot(Omega_k,angle(Xk)); grid;
title('\angle X(\Omega)');
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
axis([0,2*pi,-pi,pi]);