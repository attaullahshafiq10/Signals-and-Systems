% Script : ex_4_21.m
%
% Create a vector of time instants and compute the signal.
t = [-5:0.01:5];
x = 1./(3+2*t.*t);
% Create a vector of frequency values and compute the transform.
f = [-0.5:0.01:0.5];
Xf = pi/sqrt(6)*exp(-6*sqrt(pi)*abs(f));
% Graph the signal and the transform.
clf;
subplot(2,1,1);
plot(t,x);
xlabel('t');
title('x(t)');
grid;
subplot(2,1,2);
plot(f,Xf);
xlabel('f (Hz)');
title('X(f)');
grid;