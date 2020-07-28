% Script: matex_10_9a.m
%
% Set design parameters.
T = 1;
Rp = 2;
As = 20;
omg1 = 2/T*tan(0.2*pi/2); 
omg2 = 2/T*tan(0.36*pi/2); 
% Determine the minimum filter order and the critical frequency for the
% analog prototype.
[N,omgc] = buttord(omg1,omg2,Rp,As,'s')
% Design the analog prototype.
[num,den] = butter(N,omgc,'s')
% Convert the analog prototype to a discrete-time filter using bilinear
% transformation.
[numz,denz] = bilinear(num,den,1/T)