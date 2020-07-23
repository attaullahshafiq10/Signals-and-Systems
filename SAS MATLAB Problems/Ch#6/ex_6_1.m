% Script: ex_6_1.m
%
% Define anonymous function for the transform.
Xs = @(f,Ts) 1./(1-exp(-100*Ts)*exp(-j*2*pi*f*Ts));
% Create a vector of frequencies.
f = [-700:1.4:700];
% Compute and graph the transform for fs = 200, 400, 600 Hz.
fs = 200;
Ts = 1/fs;
clf;
subplot(3,1,1);
plot(f,abs(Xs(f,Ts)));
xlabel('f (hz)');
ylabel('Magnitude');
title('|X_{s}(f)|  for f_{s}=200 Hz');
grid;
subplot(3,1,2);
fs = 400;
Ts = 1/fs;
plot(f,abs(Xs(f,Ts)));
xlabel('f (hz)');
ylabel('Magnitude');
title('|X_{s}(f)|  for f_{s}=400 Hz');
grid;
subplot(3,1,3);
fs = 600;
Ts = 1/fs;
plot(f,abs(Xs(f,Ts)));
xlabel('f (hz)');
ylabel('Magnitude');
title('|X_{s}(f)|  for f_{s}=600 Hz');
grid;