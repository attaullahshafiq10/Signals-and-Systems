% Script: matex_10_9b.m
%
% Set numerator and denominator polynomials for the analog prototype.
num = [0,0,0,0,0.2608];
den = [1,1.8675,1.7437,0.9537,0.2608];
% Set numerator and denominator polynomials for the discrete-time filter.
numz = [0.0065,0.0260,0.0390,0.0260,0.0065];
denz = [1,-2.2209,2.0861,-0.9204,0.1594];
% Create a vector of radian frequencies.
omg = [0:0.01:5];
% Compute the frequency response for the analog prototype filter.
G = freqs(num,den,omg);
% Create a vector of angular frequencies.
Omg = [0:0.01:1]*pi;
% Compute the frequency response for the discrete-time filter.
H = freqz(numz,denz,Omg);
% Graph the magnitude of the frequency response for the analog prototype
% and for the discrete-time filter.
clf;
subplot(2,1,1);
plot(omg,abs(G));
axis([0,5,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|G(\omega)| for the analog prototype');
grid;
subplot(2,1,2);
plot(Omg,abs(H));
axis([0,pi,0,1.2]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)| for the discrete-time filter');
grid;