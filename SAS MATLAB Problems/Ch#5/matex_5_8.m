% Script: matex_5_4.m
%
% Create a length-10 complex signal.
n = [0:9];
x = rand(1,10)+j*rand(1,10)
% Compute circularly conjugate symmetric component.
xE = 0.5*(x+conj(ss_crev(x)))
% Compute circularly conjugate antisymmetric component.
xO = 0.5*(x-conj(ss_crev(x)))