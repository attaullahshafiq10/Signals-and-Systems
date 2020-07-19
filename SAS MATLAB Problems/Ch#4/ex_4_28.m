% Script : ex_4_28.m
%
% Set signal parameters "a" and "tau".
a = 2;
tau = 1;
% Create a vector of radian frequencies.
omg = [-10:0.02:10];
% Compute the transform.
Xomg = 2*a*exp(-j*omg*tau)./(a*a+omg.*omg);
% Graph the magnitude and the phase of the transform.
clf;
subplot(2,1,1);
plot(omg,abs(Xomg));
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|X(\omega)|');
grid;
subplot(2,1,2);
plot(omg,angle(Xomg));
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('X(\omega)');
grid;