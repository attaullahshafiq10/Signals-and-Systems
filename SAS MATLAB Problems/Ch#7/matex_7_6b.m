% Script: matex_7_6b.m
%
omega = [-5:0.01:5];
s = j*omega;
B = s-1;
A = s+2;
mag = abs(B)./abs(A);
phs = angle(B)-angle(A);
clf;
subplot(2,1,1);
plot(omega,mag);
title('Magnitude of the frequency response');
xlabel('\omega (rad/s)'); grid;
subplot(2,1,2);
plot(omega,phs);
title('Phase of the frequency response');
xlabel('\omega (rad/s)'); grid;