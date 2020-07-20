% Script: ex_5_19.m
%
% textrm{Create a vector of angular frequencies.
Omg = [-3:0.01:3]*pi;
% Compute the transforms.
HOmg = 1./(1-2/3*exp(-j*Omg));
XOmg = 1./(1-3/4*exp(-j*Omg));
YOmg = -8./(1-2/3*exp(-j*Omg))+9./(1-3/4*exp(-j*Omg));
% Graph the magnitude and the phase of each transform.
clf;
subplot(3,2,1);
plot(Omg,abs(HOmg));
axis([-3*pi,3*pi,0,5]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;
subplot(3,2,2);
plot(Omg,angle(HOmg));
axis([-3*pi,3*pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle H(\Omega)');
grid;
subplot(3,2,3);
plot(Omg,abs(XOmg));
axis([-3*pi,3*pi,0,5]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|X(\Omega)|');
grid;
subplot(3,2,4);
plot(Omg,angle(XOmg));
axis([-3*pi,3*pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle X(\Omega)');
grid;
subplot(3,2,5);
plot(Omg,abs(YOmg));
axis([-3*pi,3*pi,0,15]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|Y(\Omega)|');
grid;
subplot(3,2,6);
plot(Omg,angle(YOmg));
axis([-3*pi,3*pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle Y(\Omega)');
grid;