% Script: matex_10_11b.m
%
% Set vectors for numerator and denominator polynomials of the system function.
numz = [0.000461,0,-0.002304,0,0.004608,0,-0.004608,0,0.002304,0,-0.000461];
denz = [1,-3.721347,9.441947,-16.087520,21.797782,-22.619093,19.183425,-12.445177,6.418299,-2.213176,0.524249];
% Create a vector of angular frequencies.
Omg = [-1:0.001:1]*pi;
% Compute the frequency response.
H = freqz(numz,denz,Omg);
% Graph the magnitude of the frequency response.
clf;
plot(Omg,abs(H));
axis([-pi,pi,-0.1,1.1]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;