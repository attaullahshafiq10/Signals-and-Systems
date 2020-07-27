% Script: matex_9_3a.m
%
t = [0:0.01:4];    % Set a time vector "t" 
% Compute and graph element (1,2) of the STM from its analytical form.
phi12a = -5/3*exp(-t)+2*exp(-2*t)-1/3*exp(-4*t);
clf;
plot(t,phi12a);
grid;