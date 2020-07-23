% Script matex_6_3a.m
%
x1a = @(t) cos(12*pi*t);
x2a = @(t) cos(20*pi*t);
x3a = @(t) cos(44*pi*t);
t = [0:0.001:0.5];
fs = 16;
Ts = 1/fs;
n = [0:5];
x1n = x1a(n*Ts)
x2n = x2a(n*Ts)
x3n = x3a(n*Ts)