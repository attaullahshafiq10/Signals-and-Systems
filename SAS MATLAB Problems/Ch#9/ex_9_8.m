% Script: ex_9_8.m
%
% Set the state-space model.
A = [-2,-1;26,0];
B = [1;0];
C = [-2,0];
D = [1];
% Compute the system function using ss2tf(...).
[num,den] = ss2tf(A,B,C,D,1)
% Set the alternative state-space model.
A_bar = [0,1;-26,-2];
B_bar = [0;1];
C_bar = [0,-2];
D_bar = [1];
% Compute the system function from the alternative model using ss2tf(...).
[num,den] = ss2tf(A_bar,B_bar,C_bar,D_bar,1)