% Script: matex_10_12b.m
%
% Set the impulse response of the designed filter.
hn = [0,-0.0047,0,0.0171,-0.0053,-0.0058,-0.0106,-0.0408,0.0897,...
      0.0784,-0.2242,-0.0455,0.3295,-0.0455,-0.2242,0.0784,0.0897,...
      -0.0408,-0.0106,-0.0058,-0.0053,0.0171,0,-0.0047,0];
% Create a vector of angular frequencies.
Omg = [-256:255]/256*pi;
% Compute the frequecy response of the designed filter.
H = fftshift(fft(hn,512));
% Set the frequecy response of the ideal filter being approximated.
Omgd = [-1,-0.7,-0.7,-0.4,-0.4,0.4,0.4,0.7,0.7,1]*pi;
Hd = [0,0,1,1,0,0,1,1,0,0];
% Graph the ideal and actual magnitude responses.
clf;
plot(Omg,abs(H),Omgd,Hd);
axis([-pi,pi,-0.1,1.1]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;