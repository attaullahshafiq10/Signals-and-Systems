% Script : ex_4_9.m
%
% Set parameter "f0".
f0 = 1;
% Create a vector of time instants.
t = [0:0.002:2];
% Compute the multitone signal.
x = cos(2*pi*10*f0*t)+0.4*cos(2*pi*11*f0*t)+0.4*cos(2*pi*9*f0*t);
% Graph the multitone signal.
clf;
plot(t,x);
xlabel('t');
title('x(t)');