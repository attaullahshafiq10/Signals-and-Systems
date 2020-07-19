% Script : ex_4_15b.m
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
% Graph real and imaginary parts of the transform.*
clf;
subplot(2,1,1);
plot(omg,real(Xomg));
axis([-10,10,0,0.6]);
xlabel('\omega (rad/s)');
title('real{ X(\omega) }');
grid;
subplot(2,1,2);
plot(omg,imag(Xomg));
axis([-10,10,-0.3,0.3]);
xlabel('\omega (rad/s)');
title('imag{ X(\omega) }');
grid;