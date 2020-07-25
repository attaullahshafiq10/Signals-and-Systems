% Script: ex_8_36.m
%
% Define an anonymous function for H(z).
H = @(z) (z+1)./(z.*z-5/6*z+1/6);
% Create a vector of sample indices.
n = [-10:20];
% Compute the input signal.
x = (0.9).^n.*cos(0.2*pi*n);
% Evaluate the system function for z=0.9*exp(j*0.2*pi).
Htmp = H(0.9*exp(j*0.2*pi))
H0 = abs(Htmp)
Theta0 = angle(Htmp)
% Compute the output signal.
y = H0*(0.9).^n.*cos(0.2*pi*n+Theta0);
% Graph input and output signala.
clf;
subplot(2,1,1);
stem(n,x);
axis([-10.5,20.5,-4,4]);
xlabel('n');
title('x[n]');
subplot(2,1,2);
stem(n,y);
axis([-10.5,20.5,-15,15]);
xlabel('n');
title('y[n]');