% Script: ex_7_7b.m
%
% Generate a grid of points on the s-plane.
[sr,si] = meshgrid([-1:0.1:3]+eps,[-5.5:0.1:5.5]*2*pi+eps);
s = sr+j*si;
% Evaluate X(s) on the grid.
tau = 1;   % Pulse width=1 sec.
% Define an anonymous function for the transform.
Xs = @(s) (1-exp(-s*tau))./s;
% Generate a vector of s values on the vertical axis.
omega = [-5.5:0.01:5.5]*2*pi+eps;
tr = j*omega;
% Compute and graph the magnitude of the Fourier transform.
clf;
plot(omega,abs(Xs(tr))); grid;
axis([-10*pi,10*pi,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|X(\omega)|');