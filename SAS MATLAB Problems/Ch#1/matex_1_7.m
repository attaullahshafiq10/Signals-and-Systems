% Script: matex_1_7.m
%
% Compute and graph the periodic extension of the signal x[n].
x = [0,1,2,3,4];
n = [-15:15];
xtilde = ss_per(x,n)
% Compute and graph the periodic extension of the time-reversed version of x[n].
x = [0,1,2,3,4];
n = [-15:15];
xtilde = ss_per(x,-n)
stem(n,xtilde);