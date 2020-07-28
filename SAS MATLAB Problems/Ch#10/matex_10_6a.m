% Script: matex_10_6a.m
%
% Design an analog lowpass Chebyshev type-I filter using function cheby1().
Rp = 10*log10(1+0.4^2);
[num,den] = cheby1(3,Rp,1,'s')
% Convert the lowpass filter to a highpass filter using function lp2hp().
[numh,denh] = lp2hp(num,den,3)