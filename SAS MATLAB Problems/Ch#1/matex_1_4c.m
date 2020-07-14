% Script : matex_1_4c.m
%
% Create a vector "t" of time instants.
t=[-1:0.01:10];      
% Do time-scaling to change from a period of 2*pi to a period
% of 1.5 s.
x = sawtooth(2*pi*t/1.5);
clf;
plot(t,x);
axis([-1,10,-1.5,1.5]);
grid;