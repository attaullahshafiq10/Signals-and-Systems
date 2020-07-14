% Script : matex_1_4d.m
%
% Create a vector "t" of time instants.
t = [-2:0.01:12];
% Define one period as an anonymous function.
x1 = @(t) t.*((t>=0)&(t<1))+exp(-5*(t-1)).*((t>=1)&(t<2.5));   
% Periodic extension using modulo arithmetic on "t".
x = x1(mod(t,2.5));
clf;
plot(t,x);
axis([-1,10,-0.5,1.5]);
grid;