% Script : ex_4_24b.m
%
% Set signal parameter "a".
a = 2;
% Create a vector of radian frequencies and compute the transform.
omg = [-10:0.02:10];
Xomg = 1./(a+j*omg);
% Graph real and imaginary parts of the transform.
clf;
subplot(2,1,1);
plot(omg,real(Xomg));
xlabel('\omega (rad/s)');
title('real\{ X(\omega) \}');
grid;
subplot(2,1,2);
plot(omg,imag(Xomg));
xlabel('\omega (rad/s)');
title('imag\{ X(\omega) \}');
grid;