% Script matex_6_2b.m
%
% Define an anonymous function for the spectrum.
Xa = @(omg) 2./(1+omg.*omg);
% Set sampling rate and sampling interval.
fs = 1;
Ts = 1/fs;
% Create a vector of angular frequencies.
Omg = [-1:0.001:1]*pi;
% Compute the transform of the sampled signal.
XDTFT = zeros(size(Xa(Omg/Ts)));
for k=-5:5,
  XDTFT = XDTFT+fs*Xa((Omg-2*pi*k)/Ts);
end;
% Graph the transform of the sampled signal.
plot(Omg,XDTFT);
axis([-pi,pi,-0.5,2.5]);
xlabel('\Omega (rad)');
title('X(\Omega)');
grid;