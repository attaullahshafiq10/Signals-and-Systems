% Script: matex_8_9.m
%
% Create vectors for the numerator and the denominator of H(z).
num=[1,0,-7,6];
den=[1,-1,-0.34,0.966,-0.2403];
% Find zeros and poles of H(z).
z = roots(num)
p = roots(den)
% Form the numerator and the denominator of the first cascade section.
num1 = poly([z(1),z(3)])
den1 = poly([p(1),p(4)])
% Form the numerator and the denominator of the second cascade section.
num2 = [1,-z(2)]
den2 = poly([p(2),p(3)])