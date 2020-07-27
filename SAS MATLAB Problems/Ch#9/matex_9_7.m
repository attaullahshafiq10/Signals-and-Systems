% Script: matex_9_7.m
%
% Set state-space model.
A = [0,-0.5;0.25,0.75];
B = [2;1];
C = [3,1];
D = [0];
% Using symbolic math, compute the resolvent matrix.
z = sym('z');
tmp = z*eye(2)-A;
rsm = z*inv(tmp)
% Find the system function.
H = C/z*rsm*B+D