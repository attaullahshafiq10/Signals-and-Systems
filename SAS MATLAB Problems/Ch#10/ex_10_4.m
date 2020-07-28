% Script: ex_10_4.m
%
% Compute the dB passband ripple.
Rp = 10*log10(1+0.4^2);
% Design the lowpass prototype using the function cheby1().
[num,den] = cheby1(3,Rp,1,'s')
% Convert to a highpass filter using the function lp2hp().
[numh,denh] = lp2hp(num,den,3)
% Create a vector of radian frequencies.
omg = [-7.005:0.01:7.005];
% Compute the frequency response.
H = freqs(numh,denh,omg);
% Graph the magnitude and the phase of the frequency response.
clf;
subplot(2,1,1);
plot(omg,abs(H));
axis([-7,7,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
grid;
subplot(2,1,2);
plot(omg,angle(H));
axis([-7,7,-pi,pi]);
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle H(\omega)');
grid;