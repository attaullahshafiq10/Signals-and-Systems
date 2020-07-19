% Script : ex_4_8a.m
%
% Set parameter "a" for the sawtooth waveform.
a = 1;
% Create a vector of harmonic indices.
k = [-20:20]+0.001;  % Avoid division by zero at k=0.
% Compute the EFS coefficients: Eqn. (4.78).
c = a*(-exp(-j*2*pi*k)./(j*2*pi*k)+(exp(-j*2*pi*k)-1)./(4*pi*pi*k.*k))
% Graph the magnitude and the phase of the line spectrum.
clf;
subplot(2,1,1);
stem(k,abs(c));
axis([-20,20,0,0.6]);
xlabel('Harmonic index');
ylabel('Magnitude');
title('|c_{k}|');
subplot(2,1,2);
stem(k,angle(c));
axis([-20,20,-pi,pi]);
xlabel('Harmonic index');
ylabel('Phase (rad)');
title('\angle c_{k}');