% Script: matex_8_3a.m
%
% Create vectors for the numerator and the denominator of X(z).
num = [1,0,-0.5,0.5];
den = [1,-0.5,-0.5,-0.6,0.6];
% Compute zeros and poles of X(z).
z = roots(num);
p = roots(den);
% Graph zeros and poles.
Omg = [0:0.001:1]*2*pi;   % Vector of angular frequencies
c = exp(j*Omg);           % Points on the unit circle
clf;
plot(real(z),imag(z),'o',real(p),imag(p),'x',real(c),imag(c),':');
axis equal                % Fix the aspect ratio.