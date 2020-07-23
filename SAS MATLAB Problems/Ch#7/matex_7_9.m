% Script: matex_7_9.m
%
% Create vectors for the zeros and the poles of the system function.
zrs = [0,1];
pls = [-1,-2,-3];
% Create a system object.
sys = zpk(zrs,pls,10)
% Compute and display the Bode plot.
clf;
bode(sys); grid;