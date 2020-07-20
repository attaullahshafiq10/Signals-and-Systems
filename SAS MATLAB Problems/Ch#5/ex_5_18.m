% Script: ex_5_18.m
%
% Set parameter "alpha".
alpha = 0.4;
% Create a vector of angular frequencies.
Omg = [-3:0.01:3]*pi;
% Compute the transform.
XOmg = alpha*exp(-j*Omg)./((1-alpha*exp(-j*Omg)).^2);
% Graph the magnitude and the phase of the transform.
clf;
subplot(2,1,1);
plot(Omg,abs(XOmg));
axis([-3*pi,3*pi,0,1.5]);
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