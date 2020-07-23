% Script: matex_6_1b.m
%
Xa = @(f) 2./(1+4*pi*pi*f.*f);    % Original spectrum
f = [-3:0.01:3];
fs = 2;         % Sampling rate
Ts = 1/fs;      % Sampling interval
% Approximate spectrum of impulse-sampled signal.
Xs = zeros(size(Xa(f)));
for k=-5:5,
  Xs = Xs+fs*Xa(f-k*fs);
end;
% Graph the original spectrum.
clf;
subplot(2,1,1);
plot(f,Xa(f)); grid;
axis([-3,3,-0.5,2.5]);
title('X_{a}(f)');
% Graph spectrum of impulse-sampled signal.
subplot(2,1,2);
plot(f,Xs); grid;
axis([-3,3,-0.5,5]);
hold on;
for k=-5:5,
  tmp = plot(f,fs*Xa(f-k*fs),'g--');
end; 
hold off;
title('X_{s}(f)');
xlabel('f (Hz)');