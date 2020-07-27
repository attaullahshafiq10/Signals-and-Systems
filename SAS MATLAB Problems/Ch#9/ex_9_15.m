% Script: ex_9_15.m
%
% Set state-space model.
A = [0,1,0;-2,-3,-1;-4,0,-3];
B = [0,0;-1,1;-11,-2];
C = [1,0,0;0,0,1];
D = [0,0;0,4];
% Using symbolic math, compute the resolvent matrix.
s = sym('s');
tmp = s*eye(3)-A
rsm = inv(tmp)
% Find the system function.
G = C*rsm*B+D;
G = simplify(G)