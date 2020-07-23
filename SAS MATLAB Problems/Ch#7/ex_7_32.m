% Script: ex_7_32.m
%
% Generate the signal.
t = [-2:0.01:5];             % Vector of time instants.
x = exp(-0.3*t).*cos(2*t);   % Input signal x(t).
env = exp(-0.3*t);           % Exponential envelope.
% Define an anonymous function for the system function.
H = @(s) (s+6)/(s*s+5*s+6);
% Evaluate magnitude and phase of the system function at "s0".
s0 = -0.3+j*2;
H(s0)
H0 = abs(H(s0))
theta0 = angle(H(s0))
% Compute the output signal.
y = H0*exp(-0.3*t).*cos(2*t+theta0);
% Graph input and output signals together.
clf;
plot(t,x,'b-',t,y,'g--');
axis([-2,5,-2,2]);
xlabel('t (sec)');
ylabel('Amplitude');
title('Signals x(t) and y(t) for Example 7.32');
legend('Input signal x(t)','Output signal y(t)');
grid;