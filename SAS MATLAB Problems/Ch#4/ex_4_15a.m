% Script : ex_4_15a.m
%
% Set signal parameter "a".
a = 2;
% Create a vector of time instants and compute the signal.
t = [-1:0.01:5];
x = exp(-a*t).*(t>=0);
% Create a vector of radian frequencies.
omg = [-10:0.02:10];
% Compute the transform.
Xomg = 1./(a+j*omg);
% Graph the magnitude and the phase of the transform.
clf;
subplot(2,1,1);
plot(omg,abs(Xomg));
axis([-10,10,0,0.6]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|X(\omega)|');
grid;
subplot(2,1,2);
plot(omg,angle(Xomg));
axis([-10,10,-pi,pi]);
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle X(\omega)');
grid;