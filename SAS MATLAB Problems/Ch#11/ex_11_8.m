% Script: ex_11_8.m
%
% Set parameters.
Am = 2;      % Amplitude
fc = 25000;  % Carrier frequency
fm = 2000;   % Message frequency
t = [0:999]*1e-6;      % Vector of time instants.
% Compute the DSB signal.
x_dsb = Am*cos(2*pi*fm*t).*cos(2*pi*fc*t); % Eqn. (11.69)
% Compute the envelope. 
x_env = abs(Am*cos(2*pi*fm*t));            % Eqn. (11.70)
% Graph the DSB signal and the envelope.
clf;
plot(1000*t,x_dsb,'-',1000*t,x_env,'m--');
xlabel('t (ms)');
ylabel('Amplitude');
title('Tone modulated DSB signal and its envelope');
legend('DSB signal','Envelope');
grid;