% Script: ex_5_17.m
%
% Set parameter "alpha".
alpha = 0.4;
% Create a vector of angular frequencies.
Omg = [-3:0.01:3]*pi;
% Compute the transform.
XOmg = (1-alpha*alpha)./(1-2*alpha*cos(Omg)+alpha*alpha);
% Graph the transform.
clf;
plot(Omg,XOmg);
axis([-3*pi,3*pi,0,3]);
xlabel('\Omega (rad)');
title('X(\Omega)');
grid;