% Script : ex_4_16.m
%
% Set signal parameter "a".
a = 2;
% Create a vector of time instants and compute the signal.
t = [-5:0.01:5];
x = exp(-a*abs(t));
% Create a vector of radian frequencies.
omg = [-10:0.02:10];
% Compute the transform.
Xomg = 2*a./(a*a+omg.*omg);
% Graph the transform.
plot(omg,Xomg);
xlabel('\omega (rad/s)');
title('X(\omega)');
grid;