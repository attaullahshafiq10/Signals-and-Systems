% Script: matex_11_2.m
%
% Set parameters.
Ac = 2;
Mu = 0.7;
fc = 25000;
fm = 2000;
t = [0:999]*1e-6;  % Vector of time instants.
% Compute the AM signal.
x_am = Ac*(1+Mu*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
% Graph the EFS line spectrum.
clf;
k = [-30:30];
ck = ss_efsapprox(x_am,k);
stem(k,real(ck))