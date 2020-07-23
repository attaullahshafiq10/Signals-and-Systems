% Script: ex_7_25a.m
%
% Create vectors for the numerator and the denominator of X(s).
num = [1,1,0];
den = [1,5,6];
% Compute residues, poles and the quotient polynomial.
[r,p,qt] = residue(num,den)