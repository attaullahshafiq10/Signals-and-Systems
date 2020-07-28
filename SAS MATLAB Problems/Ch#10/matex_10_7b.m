% Script: matex_10_7b.m
%
% Redesign the Chebyshev lowpass filter of MATLAB Exercise 10.3.
omgL1 = 1;
epsilon = 0.4;
Rp = 10*log10(1+epsilon^2);
[num,den] = cheby1(3,Rp,omgL1,'s')
% Convert to a band-reject filter using function lp2bs().
omgS1=1
omgS4=3.5 
omg0 = sqrt(omgS1*omgS4);
B = (omgS4-omgS1)*omgL1;
[nums,dens] = lp2bs(num,den,omg0,B)
% Compute the frequency response of the band-reject filter.
H = freqs(nums,dens,omg);
% Graph the magnitude of the frequency response of the band-reject filter.
clf;
plot(omg,abs(H));
axis([-10,10,0,1.1]);
xlabel('\omega  (rad/s)');
ylabel('Magnitude');
title('|H(\omega)| for the band-reject filter');
grid;