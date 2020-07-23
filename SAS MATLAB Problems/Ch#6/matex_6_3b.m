% Script: matex_6_3b.m
%
x1a = @(t) cos(12*pi*t);
x2a = @(t) cos(20*pi*t);
x3a = @(t) cos(44*pi*t);
t = [0:0.001:0.5];
fs = 16;
Ts = 1/fs;
n = [0:20];
x1n = x1a(n*Ts);
clf;
plot(t,x1a(t),t,x2a(t),t,x3a(t));
hold on;
plot(n*Ts,x1n,'ro');
hold off;
axis([0,0.5,-1.2,1.2]);
xlabel('t (sec)');
title('Signals x_{1}, x_{2}, x_{3}');