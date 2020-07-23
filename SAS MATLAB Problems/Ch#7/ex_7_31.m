% Script: ex_7_31.m
%
% Generate the signal x(t).
s0 = -0.4+j*4;
t = [-2:0.01:3];        % Vector of time instants
x = exp(s0*t);          % Input signal x(t)
xr = real(x);           % Real part of x(t)
xi = imag(x);           % Imaginary part of x(t) 
env = exp(real(s0)*t);  % Exponential envelope
% Define an anonymous function for the system function H(s).
H = @(s) (s+6)/(s*s+5*s+6);
% Evaluate H(s) at "s0".
Hs0 = H(s0)
% Compute the output signal.
y = x*Hs0;              % Eqn. (7.123)
yr = real(y);           % Real part of y(t)
yi = imag(y);           % Imaginary part of y(t)
% Graph the output signal.
clf;
p2 = plot(t,yr,'b-',t,yi,'g-');
xlabel('t (sec)');
ylabel('Amplitude');
title('The signal y(t) for Example ex:0731');
legend([p2(1),p2(2)],'Real part','Imag part');
grid;