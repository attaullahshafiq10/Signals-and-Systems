% Script: matex_8_5.m
%
% Set vectors for numerator and denominator polynomials.
num = [-0.2000,1.8200,-3.5900,3.1826];   
den = [1.0000,-1.2000,0.4600,0.4520,-0.5607,0];
% Compute residues, poles and the gain factor.
[r,p,k] = residue(num,den)