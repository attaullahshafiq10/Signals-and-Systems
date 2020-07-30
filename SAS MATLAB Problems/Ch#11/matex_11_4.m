% Script: matex_11_4.m
%
t = [0:999]*1e-6;        % Vector of time instants.
msg = cos(2*pi*2000*t);  % Single-tone message signal.
Bc = 4/(0.5*pi);         % Achieve a modulation index of 0.5.
x_am = ss_switchmod(msg,Bc,25000,1e-6,15000,35000);
% Compute correct envelope for comparison purposes.
x_env = Bc/2*(1+0.5*msg);
% Graph the synthesized AM signal and correct envelope.
clf;
plot(t,x_am,t,x_env);
grid;
title('AM signal synthesis using a switching modulator');
xlabel('t (sec)');
ylabel('Amplitude');
legend('Synthesized signal','Correct envelope');