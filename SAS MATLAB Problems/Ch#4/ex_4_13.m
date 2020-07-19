% Script : ex_4_13.m
%
% Set pulse parameters.
A = 1;
tau = 1;
% Create a vector of frequencies.
f = [-6:0.02:6];
% Compute the transform.
Xf = A*tau*sinc(f*tau).*exp(-j*pi*f*tau);
% Graph the magnitude and the phase of the transform.*
clf;
subplot(2,1,1);
plot(f,abs(Xf));
axis([-6,6,0,1.2]);
xlabel('f (Hz)');
ylabel('Magnitude');
title('|X(f)|');
grid;
subplot(2,1,2);
plot(f,angle(Xf));
axis([-6,6,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle X(f)');
grid;