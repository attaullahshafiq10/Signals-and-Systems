% Script: ex_7_22a.m
%
% Set numerator and denominator polynomials for the transform X(s).
num = [1,1]
den = [1,2,0]
% Compute residues and poles.
[r,p,k] = residue(num,den)