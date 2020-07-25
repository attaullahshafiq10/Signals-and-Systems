% Script: matex_8_7b.m
%
Omega = [-1:0.004:1]*pi;
z = exp(j*Omega);
B = z+0.6;
A = z-0.8;
mag = abs(B)./abs(A);
phs = angle(B)-angle(A);
clf;
subplot(2,1,1);
plot(Omega,mag);
title('Magnitude of the frequency response');
xlabel('\Omega (rad)'); grid;
subplot(2,1,2);
plot(Omega,phs);
title('Phase of the frequency response');
xlabel('\Omega (rad)'); grid;