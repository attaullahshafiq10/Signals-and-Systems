% Script: matex_8_8.m
%
num = [1,-0.7686];           % Vector for numerator coefficients.
den = [1,-1.5371,0.9025];    % Vector for denominator coefficients.
zrs = roots(num);       % Compute zeros.
pls = roots(den);       % Compute poles.
Omg = [-1:0.001:1]*pi;  % Vector of frequencies.
[mag,phs] = ss_freqz(zrs,pls,1,Omg);
% Graph the magnitude and the phase of the frequency response.*
clf;
subplot(2,1,1);
plot(Omg,mag);
axis([-pi,pi,0,12]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;
subplot(2,1,2);
plot(Omg,phs);
axis([-pi,pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle H(\Omega)');
grid;