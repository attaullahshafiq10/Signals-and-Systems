% Script: ex_9_2.m
%
% Set the state-space model.
A = [6.5,2,1.5;-10.5,-2,-1.5;5.5,2,2.5];
B = [1;,-2;0];
C = [-1,-1,-2];
% Compute the matrix P.
[P,E] = eig(A);
% Find state-space model with diagonal coefficient matrix.
A_bar = inv(P)*A*P
B_bar = inv(P)*B
C_bar = C*P