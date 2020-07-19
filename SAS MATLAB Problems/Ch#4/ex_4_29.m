% Script : ex_4_29.m
%
% Set signal parameters "f0" and "tau".
f0 = 5;
tau = 1;
% Create a vector of time instants and compute the signal.
t = [-3:0.01:3];
x = cos(2*pi*f0*t).*((t>=-tau)&(t<=tau));
% *Create a vector of frequencies.*
f = [-10:0.02:10];
% *Compute the transform.*
P = @(f) 2*tau*sinc(2*tau*f);
X = 0.5*P(f-f0)+0.5*P(f+f0);   % Eqn. (4.238)
% Graph the signal and the transform.
clf;
subplot(2,1,1);
plot(t,x);
xlabel('t');
title('x(t)');
grid;
subplot(2,1,2);
plot(f,X);
xlabel('f (Hz)');
title('X(f)');
grid;