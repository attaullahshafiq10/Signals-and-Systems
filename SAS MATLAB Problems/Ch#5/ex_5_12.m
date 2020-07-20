% Script: ex_5_12.m
%
% Set pulse width.
L = 5;
% Create a vector of angular frequencies.
Omg = [-3:0.01:3]*pi+0.0001;  % Avoid division by zero.
% Compute the transform.
XOmg = sin(Omg*(2*L+1)/2)./sin(Omg/2);
% Graph the transform.
clf;
plot(Omg,XOmg);
axis([-3*pi,3*pi,-5,15]);
xlabel('\Omega (rad)');
title('X(\Omega)');
grid;