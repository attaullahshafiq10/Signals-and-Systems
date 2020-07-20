% Script : ex_5_15a.m
%
% Set parameter L.
L = 10;
% Create a vector of angular frequencies.
Omg = [-14:0.005:14];
% Compute the transform.
XOmg = sin(0.5*Omg*(2*L+1))./sin(0.5*Omg);
% Graph the transform.
plot(Omg,XOmg);
axis([-14,14,-10,25]);
xlabel('\Omega (rad)'); 
title('W(\Omega)  (for L=10)');