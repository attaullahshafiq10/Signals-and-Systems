% Script : ex_4_47.m
%
% Set parameter "fc" and "tau".
fc = 80;      % Cutoff frequency for the RC system.
tau = 0.01;   % Pulse width (we will use 10 ms).
% Define an anonymous function for H(f).
H = @(f) 1./(1+j*f/fc);
% Set a vector of frequency values.
f = [-500:500];
% Graph the system function and the spectra for
% input and output signals.
clf;
subplot(3,2,1);
plot(f,abs(H(f)));
xlabel('f (Hz)');
ylabel('Magnitude');
title('|H(f)|');
subplot(3,2,2);
plot(f,angle(H(f)));
axis([-500,500,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle H(f)');
X = tau*sinc(f*tau);
subplot(3,2,3);
plot(f,abs(X));
xlabel('f (Hz)');
ylabel('Magnitude');
title('|X(f)|');
subplot(3,2,4);
plot(f,angle(X));
axis([-500,500,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle X(f)');
Y = X.*H(f);
subplot(3,2,5);
plot(f,abs(Y));
xlabel('f (Hz)');
ylabel('Magnitude');
title('|Y(f)|');
subplot(3,2,6);
plot(f,angle(Y));
axis([-500,500,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle Y(f)');