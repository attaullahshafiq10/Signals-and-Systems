% Script: ex_10_10.m
%
% Compute the truncated impulse response.
Omgc = 0.3*pi;
n = [-7:7];
hT = Omgc/pi*sinc(Omgc*n/pi)
% Compute the frequency response.
Omg = [-256:255]/256*pi;
H = fftshift(fft(hT,512));
% Graph the truncated impulse response, the impulse response h[n]
% and the magnitude of the frequency response.
clf;
subplot(3,1,1);
stem(n,hT);
title('h_{T}[n]');
xlabel('Index n');
subplot(3,1,2);
h = hT
stem([0:14],h);
title('h[n]');
xlabel('Index n');
subplot(3,1,3);
plot(Omg,abs(H));
hold on;
plot([-pi,-0.3*pi,-0.3*pi,0.3*pi,0.3*pi,pi],[0,0,1,1,0,0],'r--');
hold off;
axis([-pi,pi,0,1.2]);
xlabel('\Omega (rad)');
ylabel('Magnitude');
title('|H(\Omega)|');
grid;