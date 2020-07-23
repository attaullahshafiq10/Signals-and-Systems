% Script: ex_7_14.m
%
% Create a vector of time instants.
t = [-2:0.02:10];
% Create the signal x1(t).
x1 = sin(pi*t).*(t>=0);
% Create the signal x2(t).
x2 = sin(pi*(t-1)).*(t>=1);
% Graph the signals x1(t), x2(t) and x(t).
clf;
subplot(3,1,1);
plot(t,x1);
xlabel('t');
title('x_{1}(t)');
grid;
subplot(3,1,2);
plot(t,x2);
xlabel('t');
title('x_{2}(t)');
grid;
subplot(3,1,3);
plot(t,x1+x2);
xlabel('t');
title('x(t)=x_{1}(t)+x_{2}(t)');
grid;