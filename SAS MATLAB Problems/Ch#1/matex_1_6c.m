% Script : matex_1_6c.m
%
% Compute and graph the signal x3[n]
n = [-20:59];
x3 = sin(0.2*n).*((n>=0)&(n<=39));
stem(n,x3);