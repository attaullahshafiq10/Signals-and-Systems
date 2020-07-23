% Script: matex_6_6b.m
%
% Test the function ss_zohsamp(...).
x = @(t) exp(-abs(t));
t = [-4:0.001:4];
xzoh = ss_zohsamp(x,0.2,0.5,t);
clf;
plot(t,xzoh);