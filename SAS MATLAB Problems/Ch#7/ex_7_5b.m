% Script: ex_7_5b.m
%
% Define an anonymous function for the signal.
x = @(t,a) exp(a*t).*(t>=0);
% Create a vector of time instants.
t = [-1:0.01:4];
% Compute x(t) for a=-0.5+j*4
x3 = x(t,-0.5+j*4);
% Compute and graph x(t) for a=0.7+j4
x4 = x(t,0.7+j*4);
% Graph the two signals.
clf;
subplot(2,1,1);
plot(t,real(x3),t,imag(x3),'--');
xlabel('t');
title('x(t) with a=-0.5+j4');
subplot(2,1,2);
plot(t,real(x4),t,imag(x4),'--');
xlabel('t');
title('x(t) with a=0.7+j4');