% Script: ex_10_5a.m
%
% Set vectors numerator and denominator polynomials.
num = [0.625];
den = [1,1.1542,1.4161,0.625];
% Find a partial fraction expansion for G(s).
% See Eqn. (10.133).
[r,p,k] = residue(num,den)
% Convert poles of G(s) to poles of H(z) and find a partial fraction
% expansion for H(z). See Eqn. (10.136).
T = 0.2;      % Sampling interval
r = r*T       % Residues
p = exp(p*T)  % Poles of H(z)
% Form numerator and denominator polynomials for H(z).
[num1,den1] = residue(r,p,k)
% Compute the magnitude of the frequency response for H(z).
Omega = [0:0.001:1]*pi;
HMag = abs(freqz(num1,den1,Omega));
% Graph the magnitude response.
clf;
plot(Omega,HMag);
axis([0,pi,0,1.2]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;