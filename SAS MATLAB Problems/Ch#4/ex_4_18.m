% Script : ex_4_18.m
%
% Set signal parameter "a".
a = 0.4;
% Create a vector of time instants and compute the signal.
t = [-5:0.01:5];
p = -exp(a*t).*(t<=0)+exp(-a*t).*(t>0);
% Create a vector of frequency values.
omg = [-8:0.01:8];
% Compute the transform.
Xomg = -j*2*omg./(a*a+omg.*omg);
% Graph the imaginary part of the transform.
plot(omg, imag(Xomg));
xlabel('\omega (rad/s)');
title('imag\{ X(\omega) \}');
grid;