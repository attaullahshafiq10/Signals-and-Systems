% Script: matex_11_1.m
%
% Set parameters.
Ac = 2;
Mu = 0.7;
fc = 25000;
fm = 2000;
t = [0:999]*1e-6;      % Vector of time instants.
% Compute the AM signal.
x_am = Ac*(1+Mu*cos(2*pi*fm*t)).*cos(2*pi*fc*t); % Eqn. (11.8)
% Compute the envelope. 
x_env = abs(Ac*(1+Mu*cos(2*pi*fm*t)));           % Eqn. (11.9)
% Graph the AM signal and the envelope.
clf;
plot(t,x_am,'-',t,x_env,'m--');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Tone modulated AM signal and its envelope');
legend('AM signal','Envelope');
grid;