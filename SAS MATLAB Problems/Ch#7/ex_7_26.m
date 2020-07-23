% Script: ex_7_26.m
%
% Create vectors for the numerator and the denominator of X(s).
num = [1,-1];
den = conv([1,2],conv([1,1],conv([1,1],[1,1])));
% Compute residues, poles and the quotient polynomial.
[r,p,qt] = residue(num,den)