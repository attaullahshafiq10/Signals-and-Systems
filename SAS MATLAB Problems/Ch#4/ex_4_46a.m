% Script : ex_4_46a.m
%
% Set parameters "T0" and "f0".
T0 = 0.05;    % Period id 50 ms.
f0 = 1/T0;    % Fundamental frequency.
% Define an anonymous function for H(f).
H = @(f) 1./(1+j*f/80);
% Set a vector of harmonic indices.
k = [-20:20];
% Compute the EFS coefficients for the input signal.
c = 0.2*sinc(0.2*k);
% Compute the EFS coefficients for the output signal.
d = c.*H(k*f0);
% Set a vector of frequency values.
f = k*f0;     % Integer multiples of the fundamental frequency.
% Graph the system function and the line spectra for
% input and output signals.
clf;
subplot(3,2,1);
plot(f,abs(H(f)));
xlabel('f (Hz)');
ylabel('Magnitude');
title('|H(f)|');
subplot(3,2,2);
plot(f,angle(H(f)));
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle H(f)');
subplot(3,2,3);
stem(f,abs(c));
xlabel('f (Hz)');
ylabel('Magnitude');
title('|c_{k}|');
subplot(3,2,4);
stem(f,angle(c));
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle c_{k}');
subplot(3,2,5);
stem(f,abs(d));
xlabel('f (Hz)');
ylabel('Magnitude');
title('|d_{k}|');
subplot(3,2,6);
stem(f,angle(d));
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle d_{k}');