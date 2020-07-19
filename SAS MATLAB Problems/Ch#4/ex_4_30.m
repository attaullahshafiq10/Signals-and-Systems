% Script : ex_4_30.m
%
% Create a vector of radian frequencies.
f = [-6:0.02:6];
omg = 2*pi*f;
% Compute the transform.
Xomg = -2*sinc(omg/pi).*exp(-j*0.5*omg)+3*sinc(2*omg/pi).*exp(-j*3.5*omg);
% Graph the magnitude and the phase of the transform.
clf;
subplot(2,1,1);
plot(omg,abs(Xomg));
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|X(\omega)|');
grid;
subplot(2,1,2);
plot(omg,angle(Xomg));
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle X(\omega)');
grid;