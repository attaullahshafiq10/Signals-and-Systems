% Script: matex_7_4b.m
%
% Create vectors for the numerator and the denominator of the transform.
num = [3,2,5];
den = [1,4,20];
% Compute residues, poles and the quotient polynomial.
[res,poles,qt] = residue(num,den)