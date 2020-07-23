% Script: matex_7_8a.m
%
% Create vectors for the numerator and the denominator of the system
% function.
num = [1,0,1];
den = [1,5,17,13];
% Create a system function object.
sys1 = tf(num,den)
% Pole zero plot for H(s).
clf;
pzmap(sys1);
axis([-3,1,-4,4]);