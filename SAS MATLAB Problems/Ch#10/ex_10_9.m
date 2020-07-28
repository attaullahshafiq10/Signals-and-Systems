% Script: ex_10_9.m
%
% Create a vector for the impulse response h[n].
h = [3,2,1,2,3];
% Compute the frequency response.
H = fftshift(fft(h,512));
% Create the appropriate angular frequency values for the frequency
% response computed in the previous step.
Omg = [-256:255]/256*pi;
% Graph the magnitude and the phase of the frequency response.
clf
subplot(2,1,1);
plot(Omg,abs(H));
axis([-pi,pi,0,12]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;
subplot(2,1,2);
plot(Omg,angle(H));
axis([-pi,pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');
title('\angle H(\Omega)');
grid;