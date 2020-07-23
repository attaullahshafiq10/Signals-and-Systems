% Script: ex_6_2b.m
%
% Define anonymous functions for the three signals.
xa1 = @(t) cos(2*pi*6*t);
xa2 = @(t) cos(2*pi*10*t);
xa3 = @(t) cos(2*pi*22*t);
t = [-0.2:0.001:0.6];  % Vector of time instants.
n = [-10:10];          % Vector of sample indices.
Ts = 1/16;             % Sampling interval.
% Graph continuous-time signals x1 and x2 along with the sampled version of x3.
plot(t,xa1(t),'b-',t,xa2(t),'g-',n*Ts,xa3(n*Ts),'ro');
axis([-0.2,0.6,-1.2,1.2]);
xlabel('t (sec)');;
title('x_{a1}(t),  x_{a2}(t)  and  x_{a3}(nT_{s})');
