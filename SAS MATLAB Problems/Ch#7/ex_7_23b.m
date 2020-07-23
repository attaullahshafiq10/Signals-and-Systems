% Script: ex_7_23b.m
%
% Compute and graph the signal x(t).
t = [-1:0.01:10];  % Vector of time instants.
x = 1/9*(1-cos(3*t)+3*sin(3*t)).*(t>=0);
clf;
plot(t,x);
axis([-1,10,-0.6,0.6]);
xlabel('t (sec)');
ylabel('Amplitude');
title('The signal x(t) for Example 7.23');
grid;