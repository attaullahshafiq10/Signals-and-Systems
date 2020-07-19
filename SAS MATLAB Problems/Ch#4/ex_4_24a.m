% Script : ex_4_24a.m
%
% Set signal parameter "a".
a = 2;
% Create a vector of radian frequencies and compute the transform.
omg = [-10:0.02:10];
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