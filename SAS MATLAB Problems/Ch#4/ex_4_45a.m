% Script : ex_4_45a.m
%
% Define an anonymous function for H(f).
H = @(f) 1./(1+j*f/80);
% Create a vector of frequency values.
f = [-600:600];
% Set three frequencies of interest.*
f1 = 20;
f2 = 100;
f3 = 200;
% Compute the magnitude and the phase of the system function
% at the three frequencies of interest.
H1 = abs(H(f1))
H2 = abs(H(f2))
H3 = abs(H(f3))
theta1 = angle(H(f1))
theta2 = angle(H(f2))
theta3 = angle(H(f3))
% Compute the steady-state response to a sinusoid with f=f1.
t = [0:0.05:40];  % Time instants in milliseconds.
x1 = 5*cos(2*pi*f1*t/1000);
y1 = 5*H1*cos(2*pi*f1*t/1000+theta1);
% Graph input and output signals together.
clf;
plot(t,x1,'--',t,y1,'g');
xlabel('t (ms)');
title('x_{1}(t) and y_{1}(t)');
legend('Input','Output');
grid;