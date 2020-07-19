% Script : ex_4_4b.m
%
% Set parameters.
A = 1;   % Pulse amplitude
T0 = 1;  % Pulse period
%%
% Set TFS coefficients.
k = [1:20];
bk = zeros(size(k));
k2 = [1:2:19];     % Odd indices
bk(k2) = 4*A./(pi*k2)
% Create a vector of time instants.
t=[-2:0.01:6];
% Set the fundamental frequency.
omg0 = 2*pi/T0;
% Compute an approximation to the signal using up to 9-th harmonic.
xtilde = 0;
for kk=1:9,
  xtilde = xtilde+bk(kk)*sin(kk*omg0*t);  
end;
% Graph the finite-harmonic approximation.
plot(t,xtilde);
grid;