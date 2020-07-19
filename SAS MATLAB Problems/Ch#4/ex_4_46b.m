% Script : ex_4_46b.m
%
% Set parameters "T0" and "f0".
T0 = 0.05;    % Period id 50 ms.
f0 = 1/T0;    % Fundamental frequency.
% Define an anonymous function for H(f).
H = @(f) 1./(1+j*f/80);
% Set a vector of harmonic indices.
k = [-20:20];
% Compute the EFS coefficients for the input signal.
c = 0.2*sinc(0.2*k);
% Compute the EFS coefficients for the output signal.
d = c.*H(k*f0);
% Approximate the output signal using EFS terms up to the 20-th harmonic.
t = [-100:0.2:100];  % Time instants in milliseconds.
yhat = zeros(size(t));
for kk=-20:20,
  yhat = yhat+d(kk+21)*exp(j*2*pi*kk*f0*t/1000);
end;
yhat = real(yhat);   % In case resuidual imaginary parts exist
                     % due to roundoff error.
% Graph the finite-harmonic approximation of the output signal.
clf;
plot(t,yhat);
xlabel('t (ms)');
title('Finite-harmonic approximation of y(t)');