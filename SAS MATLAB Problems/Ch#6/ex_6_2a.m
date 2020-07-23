% Script: ex_6_2a.m
%
% Define anonymous functions for the three signals.
xa1 = @(t) cos(2*pi*6*t);
xa2 = @(t) cos(2*pi*10*t);
xa3 = @(t) cos(2*pi*22*t);
t = [-0.2:0.001:0.6];  % Vector of time instants.
n = [-10:10];          % Vector of sample indices.
Ts = 1/16;             % Sampling interval.
% Graph the continuous-time signals and their sampled versions.
clf;
subplot(3,1,1);
plot(t,xa1(t),'b-',n*Ts,xa1(n*Ts),'ro');
axis([-0.2,0.6,-1.2,1.2]);
xlabel('t (sec)');
title('x_{a1}(t)  and  x_{a1}(nT_{s})');
subplot(3,1,2);
plot(t,xa2(t),'b-',n*Ts,xa2(n*Ts),'ro');
axis([-0.2,0.6,-1.2,1.2]);
xlabel('t (sec)');
title('x_{a2}(t)  and  x_{a2}(nT_{s})');
subplot(3,1,3);
plot(t,xa3(t),'b-',n*Ts,xa3(n*Ts),'ro');
axis([-0.2,0.6,-1.2,1.2]);
xlabel('t (sec)');
title('x_{a3}(t)  and  x_{a3}(nT_{s})');