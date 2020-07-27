% Script: matex_9_3a.m
%
% Set the coefficient matrix.
A = [-1,-1,0; 1,0,-1; 5,7,-6];
t = [0:0.01:4];    % Set a time vector "t" 
% Create an empty vector "phi12" to fill later
phi12 =[];
% Compute the STM for each element of vector "t"
for i=1:length(t),
  time = t(i);               % Pick a time instant
  stm = expm(A*time);        % Compute the STM at time instant t(i)
  phi12 = [phi12,stm(1,2)];  % Append element (1,2) to vector "phi12"
end;
% Graph element (1,2) of the STM
clf;
plot(t,phi12);
grid;
title('Element 1,2 of the state transition matrix');
xlabel('t (sec)');