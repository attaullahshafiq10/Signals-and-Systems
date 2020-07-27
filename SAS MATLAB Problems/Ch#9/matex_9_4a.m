% Script: matex_9_4a.m
%
A = [0,5;-2,-2];   % State matrix
t = [0:0.01:4];    % Vector of time instants
% Create empty vectors 'phi11', 'phi12', etc. to fill later
phi11 =[];
phi12 =[];
phi21 =[];
phi22 =[];
% Compute the STM for each element of vector 't'
for i=1:length(t),
  time = t(i);               % Pick a time instant
  stm = expm(A*time);        % Compute the STM at time instant t(i)
  phi11 = [phi11,stm(1,1)];  % Append element (1,1) to vector 'phi11'
  phi12 = [phi12,stm(1,2)];  % Append element (1,2) to vector 'phi12'
  phi21 = [phi21,stm(2,1)];  % Append element (2,1) to vector 'phi21'
  phi22 = [phi22,stm(2,2)];  % Append element (2,2) to vector 'phi22'
end;
% Graph elements of the STM
clf;
subplot(2,2,1)
plot(t,phi11); grid;
title('\phi_{11}(t)');
subplot(2,2,2)
plot(t,phi12); grid;
title('\phi_{12}(t)');
subplot(2,2,3)
plot(t,phi21); grid;
title('\phi_{21}(t)');
subplot(2,2,4)
plot(t,phi22); grid;
title('\phi_{22}(t)');