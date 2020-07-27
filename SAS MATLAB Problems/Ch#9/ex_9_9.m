% Script: ex_9_9.m
%
% Set the state-space model.
A = [-2,-1;26,0];
B = [1;0];
C = [-2,0];
d = 1;
% Enter matrix P and compute its inverse.
P = [0,1;26,0];
inv(P)
% Find the alternative state-space model.
A_bar = inv(P)*A*P
B_bar = inv(P)*B
C_bar = C*P