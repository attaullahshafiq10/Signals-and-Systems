% Script: matex_8_11.m
%
% Create vectors for the numerator and the denominator of H(z).
num = [1,0,-7,6];
den = [1,-1,-0.34,0.966,-0.2403];
% Compute poles and residues.
[r,p,k] = residue(num,den)
% Combine terms #3 and #4 into a second-order section.
[num1,den1] = residue(r(3:4),p(3:4),[])
% Create a transfer function object.
H1 = tf(num1,den1,-1)
% Combine terms #1 and #2 into a second-order section.
[num2,den2] = residue(r(1:2),p(1:2),[]);
% Create a transfer function object.
H2 = tf(num2,den2,-1)
% Add H1(z) and H2(z) to verify.
H = H1+H2