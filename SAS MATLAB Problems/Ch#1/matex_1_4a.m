% Script : matex_1_4a.m
%
% Create a vector "t" of time instants.
t=[-1:0.01:10];      
% Function "square" has default period of 2*pi, so we need
% to do some time-scaling. (Sec.1.3.1)
x = square(2*pi*t);  
clf;
plot(t,x);
axis([-1,10,-1.5,1.5]);
grid;