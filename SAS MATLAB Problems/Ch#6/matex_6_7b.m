% Script: matex_6_7b.m
%
fs = 200;     % Sampling rate
Ts = 1/fs;    % Sampling interval
% Set index limits "n1" and "n2" to cover the time interval
% from -25 ms to +75 ms
n1 = -fs/40;
n2 = -3*n1;
n = [n1:n2];
t = n*Ts;     % Vector of time instants
xs = exp(-100*t).*(n>=0);    % Samples of the signal
clf;
stem(t,xs,'^'); grid;
hold on;
plot(t,xs,'r-');
hold off;
axis([-0.030,0.080,-0.2,1.1]);
title('Reconstruction using first-order-hold'); 
xlabel('t (sec)');
ylabel('Amplitude');
text(0.015,0.7,sprintf('Sampling rate = %.3g Hz',fs));