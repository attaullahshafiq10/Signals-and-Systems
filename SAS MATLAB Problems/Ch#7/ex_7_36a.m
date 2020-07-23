% Script: ex_7_36a.m
%
% Create vectors for numerator and denominator polynomials of the system function.
num = 15*[1,1,0]
den = conv([1,3],conv([1,-1],[1,-2]));
% Compute the residues and the poles.
[r,p,k] = residue(num,den)