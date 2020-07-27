% Script: ex_9_19.m
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
% Find the state transition matrix.
phi = iztrans(rsm)
% Find the z-transform of the state vector. Use Eqn. (9.177).
Xz = rsm*[2;0]+rsm*B/(z-1)
% Find the state vector using inverse z-transform.
xn = iztrans(Xz)