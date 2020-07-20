% Script: ex_5_30.m
%
% Create a vector for one period of the input signal.
x = [0,1,2,3,4];
% Compute DTFS coefficients.
ck = ss_dtfs(x,[0:4])
% Define an anonymous function for the system function.
H = @(Omg) (1-0.2*exp(-j*Omg))./(1-0.9*exp(-j*Omg)+0.36*exp(-j*2*Omg));
% Evaluate the system function at 2*pi*k/5, k=0,...,4.
k = [0:4];
Omg_k = 2*pi*k/5;
Hk = H(Omg_k)
% Compute the DTFS coefficients for the output signal.
dk = ck.*Hk
% Compute and graph the output signal.
n = [-12:15];
yper = real(ss_invdtfs(dk,n));
clf;
stem(n,yper);
axis([-12.5,15.5,-1,7]);
xlabel('Sample index n');
title('y[n]');