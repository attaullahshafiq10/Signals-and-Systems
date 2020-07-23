% Script: ex_7_25b.m
%
% Create vectors for the numerator and the denominator of X(s).
num = [1,1,0];
den = [1,5,6];
% Compute residues, poles and the quotient polynomial.
[r,p,qt] = residue(num,den);
% Create a vector of time instants.
t = [-1:0.01:5];
% Compute the signal x1(t). We only have simple poles.
x1 = r(1)*exp(p(1)*t).*(t>=0)+r(2)*exp(p(2)*t).*(t>=0);
clf;
plot(t,x1);
xlabel('t');
title('x_{1}(t)');
grid;