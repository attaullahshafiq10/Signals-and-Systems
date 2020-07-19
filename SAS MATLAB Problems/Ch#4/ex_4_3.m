% Script : ex_4_3.m
%
% Set the dc term "a0".
a0 = 1/3
% Set TFS coefficients.
k = [1:20];
ak = 2*sin(pi*k/3)./(pi*k)
% Create a vector of time instants.
t=[-2:0.01:6];
% Set the fundamental frequency.
omg0 = 2*pi/3;
% Compute an approximation to the signal using up to 20-th harmonic.
xtilde = a0;
for kk=1:20,
  xtilde = xtilde+ak(kk)*cos(kk*omg0*t);  
end;
% Graph the finite-harmonic approximation.
plot(t,xtilde);
xlabel('t');
title('Finite-harmonic approximation to x(t)');
grid;