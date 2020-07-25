% Script: matex_8_2b.m
%
Omg = [-1:0.001:1]*pi;    % Vector of angular frequencies.
num = [0,1,-0.7686];      % Numerator coefficients for X(z).
den = [1,-1.5371,0.9025]; % Denominator coefficients for X(z).
% Compute the DTFT using the function freqz().
[Xdtft,Omg] = freqz(num,den,Omg);
% Graph the magnitude and the phase of the DTFT.
clf;
subplot(2,1,1);
plot(Omg,abs(Xdtft)); 
axis([-pi,pi,0,12]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;
subplot(2,1,2);
plot(Omg,angle(Xdtft)); 
plot(Omg,angle(Xdtft));
axis([-pi,pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle H(\Omega)');
grid;