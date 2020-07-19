%% Example 4.8
%
%%
% <matlab:edit('ex_4_8a.m') Open the script "ex_4_8a.m" in MATLAB editor> 

%%
% <matlab:ex_4_8a Run the script "ex_4_8a.m"> 

%%
% <matlab:edit('ex_4_8b.m') Open the script "ex_4_8b.m" in MATLAB editor> 

%%
% Script : ex_4_8b.m
%
% Set parameter "a" for the sawtooth waveform.
a = 1;
% Create a vector of harmonic indices.
k = [-20:20]+0.001;  % Avoid division by zero at k=0.
% Compute the EFS coefficients: Eqn. (4.78).
c = a*(-exp(-j*2*pi*k)./(j*2*pi*k)+(exp(-j*2*pi*k)-1)./(4*pi*pi*k.*k))
% Approximate the sawtooth signal using EFS terms up to the 20-th
% harmonic.
t = [-3:0.01:3];
xhat = zeros(size(t));
for kk = -20:20
  xhat = xhat+c(kk+21)*exp(j*2*pi*kk*t);
end;
xhat = real(xhat);
plot(t,xhat);
xlabel('t (sec)');
title('Finite-harmonic approximation for Example 4.8');