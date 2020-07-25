% Script: ex_8_1.m
%
% Define an anonymous function for the transform X(z).
X = @(z) 3.7+1.3*z^(-1)-1.5*z^(-2)+3.4*z^(-3)+5.2*z^(-4);
% Evaluate the transform at z=1+j2.
X(1+j*2)