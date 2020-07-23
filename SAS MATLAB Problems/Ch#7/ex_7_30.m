% Script: ex_7_30.m
%
% Create vectors for the system function.
num = [4];       % Numerator coefficients.
den = [1,3,2];   % Denominator coefficients.
% Compute residues and poles.
[r,p,k] = residue(num,den)
% Compute and graph the impulse response h(t).
t = [-1:0.01:8];
h = 4*(exp(-t)-exp(-2*t)).*(t>=0);
clf;
plot(t,h);
xlabel('t (sec)');
ylabel('Amplitude');
title('The impulse response h(t) for Example 7.30');
grid;