% Script: ex_10_5b.m
%
% Obtain the discrete-time filter using the function impinvar().
[numz,denz] = impinvar(num,den,5)
% Compute and compare magnitude responses of the analog and
% discrete-time filters.
[Ha,Wa] = freqs(num,den,512);
[Hz,Wz] = freqz(numz,denz,512,5);
clf;
plot(Wa/(2*pi),abs(Ha),'LineWidth',2);
hold on;
plot(Wz,abs(Hz),'r--');
hold off;
axis([0,2.5,0,1.2]);
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Response Comparison');
legend('Analog Filter','Discrete-time Filter');