% Script: ex_3_8.m
%
% Set the parameter "r".
r = 2.9;
% Set initial population to y[-1]=0.2
ynm1 = 0.2;
% Iterate through the difference equation.
y = [];
for n=0:29,
  yn = r*(1-ynm1)*ynm1;  % Eqn. (3.18)
  ynm1 = yn;
  y = [y,yn];  % Append new sample to the vector.
end;
% Graph y[n] for n=0,...,29.
stem([0:29],y);
xlabel('Sample index n');
ylabel('Population');