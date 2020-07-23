% Script: ex_7_39b.m
%
% Define anonymous functions for the factors of the system function.
H1 = @(s) s;
H2 = @(s) 1+s/300;
H3 = @(s) 1./(1+s/5);
H4 = @(s) 1./(1+s/40);
% Create a vector of logarithmically spaced radian frequencies.
omg = logspace(log10(0.5),log10(3000),1000);
% Compute the system function.
H = H1(j*omg).*H2(j*omg).*H3(j*omg).*H4(j*omg);
% Compute and graph magnitude and phase of H.
clf;
subplot(2,1,1);
semilogx(omg,20*log10(abs(H)));
axis([0.5,3000,-10,20]);
xlabel('\omega (rad/s)');
ylabel('Magnitude (dB)');
title('20 log_{10}|H(\omega)|');
grid;
subplot(2,1,2);
semilogx(omg,angle(H)*180/pi);
axis([0.5,3000,-100,100]);
xlabel('\omega (rad/s)');
ylabel('Phase (deg)');
title('\angle H(\omega)');
grid;