% Script: matex_8_2a.m
%
% Define an anonymous function for X(z).
X = @(z) (z-0.7686)./(z.*z-1.5371*z+0.9025);
Omg = [-1:0.001:1]*pi;  % Create a vector of angular frequencies.
Xdtft = X(exp(j*Omg));  % Evaluate the transform on the unit circle.
% Graph the magnitude and the phase of the DTFT.
clf;
subplot(2,1,1);
plot(Omg,abs(Xdtft));
axis([-pi,pi,0,12]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;
subplot(2,1,2);
plot(Omg,angle(Xdtft));
axis([-pi,pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle H(\Omega)');
grid;