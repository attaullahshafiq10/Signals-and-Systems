% Script: matex_9_6.m
%
% Set state-space model.
A = [-2,-2;1,-5];
B = [1;0];
C = [0,5];
D = [0];
% Using symbolic math, compute the resolvent matrix.
s = sym('s');
tmp = s*eye(2)-A
rsm = inv(tmp)
% Find the system function.
G = C*rsm*B+D