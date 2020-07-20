% Script: ex_5_10.m
%
% Set parameter "alpha".
alpha = 0.4;
% Create a vector of angular frequencies.
Omg = [-3:0.01:3]*pi;
% Compute the transform.
XOmg = 1./(1-alpha*exp(-j*Omg));
% Graph the magnitude and the phase of the transform.
clf;
subplot(2,1,1);
plot(Omg,abs(XOmg));
axis([-3*pi,3*pi,0,2]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|X(\Omega)|');
grid;
subplot(2,1,2);
plot(Omg,angle(XOmg));
axis([-3*pi,3*pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle X(\Omega)');
grid;