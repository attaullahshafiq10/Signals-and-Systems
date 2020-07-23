% Script: ex_7_29.m
%
% Create system objects for the terms in PFE.
Y1 = tf([2],[1,0])
Y2 = tf([-4],[1,1])
Y3 = tf([2],[1,2])
% Add the PFE terms together.
Y = Y1+Y2+Y3
% Input signal is a unit-step.
X = tf([1],[1,0])
% Find the system function.
H = minreal(Y/X)