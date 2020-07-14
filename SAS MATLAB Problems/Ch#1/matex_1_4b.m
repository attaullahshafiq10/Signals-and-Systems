% Script : matex_1_4b.m
%
% Create a vector "t" of time instants.
t=[-1:0.01:10];      
% Do time-scaling, and specify percent duty cycle as the second
% argument.
x = square(2*pi*t,20);
clf;
plot(t,x);
axis([-1,10,-1.5,1.5]);
grid;