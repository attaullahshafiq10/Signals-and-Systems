% Script: ex_10_11.m
%
% Create a vector of indices for the truncated impulse response.
n = [-7:7];
% Compute window functions.
M = 7;
w1 = 0.54-0.46*cos(pi*(n+M)/M);                        % Hamming window.
w2 = 0.42-0.5*cos(pi*(n+M)/M)+0.08*cos(2*pi*(n+M)/M);  % Blackman window.
% Compute the truncated impulse response using Hamming window.
Omgc = 0.3*pi;
hT1 = Omgc/pi*sinc(Omgc*n/pi).*w1
% Create a vector of angular frequencies.
Omg = [-256:255]/256*pi;
% Compute the frequency response of the filter using Hamming window.
H1 = fftshift(fft(hT1,512));
% Compute the truncated impulse response using Blackman window.
hT2 = Omgc/pi*sinc(Omgc*n/pi).*w2
% Compute the frequency response of the filter using Blackman window.
H2 = fftshift(fft(hT2,512));
% Graph the two frequency responses together.
plot(Omg,abs(H1),'b',Omg,abs(H2),'r');
hold on;
plot([-pi,-0.3*pi,-0.3*pi,0.3*pi,0.3*pi,pi],[0,0,1,1,0,0],'g');
hold off;
axis([-pi,pi,0,1.5]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
legend('Using Hamming window','Using Blackman window');
grid;