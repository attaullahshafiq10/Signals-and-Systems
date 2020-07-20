% Script: ex_5_29.m
%
% Specify the angular of the sinusoidal input signal
Omega0 = pi/5;  
% Evaluate the system function at "Omega0"
sf = (1-0.2*exp(-j*Omega0))./(1-0.9*exp(-j*Omega0)+0.36*exp(-j*2*Omega0))
sfmag = abs(sf)    % Magnitude
sfphs = angle(sf)  % Phase
% Compute the input signal
n = [0:49];
xn = 5*cos(pi*n/5)
% Compute the steady-state output signal
yn = sfmag*5*cos(pi*n/5+sfphs);
% Graph the signals
clf;
subplot(2,1,1);
stem(n,xn);
xlabel('Sample index  n');
ylabel('Amplitude');
title('x[n]');
subplot(2,1,2);
stem(n,yn);
xlabel('Sample index  n');
ylabel('Amplitude');
title('y[n]');