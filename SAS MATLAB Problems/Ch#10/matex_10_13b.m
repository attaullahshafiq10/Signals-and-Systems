% Script: matex_10_13b.m
%
% Set magnitude response specifications for the desired filter.
frq = [0,0.3,0.4,0.7,0.8,1];
mag = [0,0,1,1,0,0];
% Design a length-25 filter using Parks-McClellan algorithm.
% Place more emphasis on the passband.
hn = firpm(24,frq,mag,[1,10,1])
% Create a vector of angular frequencies.
Omg = [0:255]/256*pi;
% Compute the frequency response of the designed filter.
H = fft(hn,512);
H = H(1:256);
% Graph the magnitude responses of desired and actual filters.
clf;
plot(Omg,abs(H),pi*frq,mag);
axis([0,pi,-0.1,1.1]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;