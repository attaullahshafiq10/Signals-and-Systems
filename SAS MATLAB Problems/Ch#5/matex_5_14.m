% Script: matex_5_14.m
%
f = [-10:0.01:10];      % Create a vector of frequencies
% Compute the actual transform.
X_actual = 0.5*(sinc(f+0.5)+sinc(f-0.5)).*exp(-j*pi*f);
% Set parameters for the approximate transform
t1 = 1;            % Upper limit of the time range
N = 16;            % Number of samples
M = 0;             % Number of samples for zero-padding
T = t1/N;          % Sampling interval
fs = 1/T;          % Sampling rate.
n = [0:N-1];       % Index n for the sampled signal x[n]
k = [0:N+M-1];     % Index k for the DFT X[k]
time = n*T;        % Sampling instants
% Sample the signal and compute the DFT.
xn = sin(pi*time);
Xk = T*fft(xn,N+M);
fk = k*fs/(N+M);
% Use fftshift() function on the DFT result to bring the zero-
% frequency to the middle. Also adjust vector fk for it.
Xk = fftshift(Xk);
fk = fk-0.5*fs;
% Graph the results.
clf;
subplot(2,1,1);
plot(f,abs(X_actual),'-',fk,abs(Xk),'r*'); grid;
title('Magnitude of actual and approximate transforms');
xlabel('f (Hz)');
ylabel('Magnitude');
subplot(2,1,2);
plot(f,angle(X_actual),'-',fk,angle(Xk),'r*'); grid;
title('Phase of actual and approximate transforms');
xlabel('f (Hz)');
ylabel('Phase (rad)');