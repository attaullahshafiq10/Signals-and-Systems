% Script: ex_5_28.m
%
% Set moving average filter length N.
N = 4;
% Create a vector of angular frequencies.
Omg = [-1:0.002:1]*pi;
% Compute the system function.
HOmg = (1-exp(-j*Omg*N))./(N*(1-exp(-j*Omg)));
% Graph the magnitude and the phase of the system function.
clf;
subplot(2,1,1);
plot(Omg,abs(HOmg));
axis([-pi,pi,0,2.5]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;
subplot(2,1,2);
plot(Omg,angle(HOmg));
axis([-pi,pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle H(\Omega)');
grid;