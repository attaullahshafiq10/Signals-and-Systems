% Script: matex_9_5b.m
%
% Set state-space model.
A = [-2,-2; 1,-5];
% Compute the state transition matrix using inverse Laplace transform.
s = sym('s');        % Define symbolic variable.
tmp = s*eye(2)-A;
rsm = inv(tmp)       % Resolvent matrix.
stm = ilaplace(rsm)  % State transition matrix.