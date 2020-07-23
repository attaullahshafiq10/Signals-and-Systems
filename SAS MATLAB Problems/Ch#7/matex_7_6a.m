% Script: matex_7_6a.m
%
omega = 3;
s = j*omega;
B = s-1;
A = s+2;
mag = abs(B)/abs(A);
phs = angle(B)-angle(A);