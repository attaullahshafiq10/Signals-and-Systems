% Script: ex_9_20.m
%
% Set state-space model.
A = [-2,-2;1,-5];
B = [1;0];
C = [0,5];
d = 0;
% Set the sampling interval.
Ts = 0.1;
% Find discrete-time state-space model.
A_bar = expm(A*Ts)
B_bar = inv(A)*(A_bar-eye(2))*B
C_bar = C
d_bar = d