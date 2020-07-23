% Script: matex_6_6a.m
%
% Test the function ss_natsamp(...).
x = @(t) exp(-abs(t));
t = [-4:0.001:4];
xnat = ss_natsamp(x,0.2,0.5,t);
clf;
plot(t,xnat);