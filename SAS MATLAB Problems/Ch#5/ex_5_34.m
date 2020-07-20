% Script: ex_5_34
%
% Create a vector for the discrete-time pulse signal x[n].
x = ones(1,10);
% Compute the DFT of the signal x[n] padded with 10 zeros.
Xk = fft(x,20);
% Graph the magnitude and the phase.
clf;
subplot(2,1,1);
stem([0:19],abs(Xk));
axis([-0.5,19.5,0,12]);
subplot(2,1,2);
stem([0:19],angle(Xk));
axis([-0.5,19.5,-pi,pi]);