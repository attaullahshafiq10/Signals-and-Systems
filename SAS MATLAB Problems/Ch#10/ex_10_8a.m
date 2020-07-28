% Script: ex_10_8a.m
%
% Set parameters of the filter to be designed.
T = 1;
Omg1 = 0.2*pi;
Omg2 = 0.36*pi;
Rp = 2;
As = 20;
% Apply prewarping to the critical frequencies using Eqn. (10.163).
omg1 = 2/T*tan(Omg1/2) 
omg2 = 2/T*tan(Omg2/2) 
% Determine minimum filter order using Eqn. (10.65).
tmp1 = 10^(Rp/10)-1;
tmp2 = 10^(As/10)-1;
tmp3 = sqrt(tmp1/tmp2)
N = log10(tmp3)/log10(omg1/omg2)
N = ceil(N)
% Determine the critical frequency using Eqn (10.62)
% for exact fit at passband edge.
tmp4 = log10(omg1)-0.5*log10(tmp1)/N
omgc = 10^tmp4
% Determine the critical frequency using Eqn (10.63) instead, 
% for exact fit at stopband edge.
tmp5 = log10(omg2)-0.5*log10(tmp2)/N
omgc = 10^tmp5
% Determine minimum filter order using the function buttord().
[N,omgc] = buttord(omg1,omg2,Rp,As,'s')