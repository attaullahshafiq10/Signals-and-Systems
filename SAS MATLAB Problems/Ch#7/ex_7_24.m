% Script: ex_7_24.m
%
% Create vectors for the numerator and the denominator of X(s).
num = 5*[1,-1]
den = conv(conv([1,1],[1,2]),conv([1,-2],[1,-3]))
% Compute the residues and the poles.
[r,p,k] = residue(num,den)
% Combine terms for poles #3 and #4 (causal terms).
[n2,d2] = residue(r([3:4]),p([3:4]),[])
% Combine terms for poles #1 and #2 (anti-causal terms).
[n3,d3] = residue(r([1:2]),p([1:2]),[])