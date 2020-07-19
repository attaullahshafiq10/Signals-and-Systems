% Script : ex_4_43.m
%
% Set system parameters "R" and "C".
R = 1;
C = 1;
% Create a vector of frequency values.
omg = [-5:0.01:5];
% Compute the system function.
H = 1./(1+j*omg*R*C);
% Graph the magnitude and the phase of the system function.
clf;
subplot(2,1,1);
plot(omg,abs(H));
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
grid;
subplot(2,1,2);
plot(omg,angle(H));
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle H(\omega)');
grid;