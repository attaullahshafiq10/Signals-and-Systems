% Script: matex_9_5a.m
%
% Set state-space model.
A = [-2,-2; 1,-5];
% Compute the state transition matrix using function expm(...).
t = sym('t');   % Define symbolic variable.
expm(A*t)       % Compute the state transition matrix.