% Script: matex_7_4a.m
%
% Create vectors for the numerator and the denominator of the transform.
num = conv([1,0],[1,-2]);
den = [1,9,30,42,20];
% Compute residues and poles.
[res,poles,qt] = residue(num,den)