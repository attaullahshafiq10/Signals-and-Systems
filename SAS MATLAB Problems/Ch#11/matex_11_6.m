% Script: matex_11_6.m
%
t = [0:999]*1e-6;        % Vector of time instants.
msg = cos(2*pi*2000*t);  % Single-tone message signal.
% Set parameter value for Ac=1 and modulation index of 0.5.
Bc = 1;
a = 1;
b = 0.25;
x_am = ss_sqlawmod(msg,Bc,25000,1e-6,1,0.25,15000,35000);
% Compute correct envelope for comparison purposes.
x_env = 1+0.5*msg;
% Graph the synthesized AM signal and correct envelope.
clf;
plot(t,x_am,t,x_env);
grid;
title('AM signal synthesis using a square-law modulator');
xlabel('t (sec)');
ylabel('Amplitude');
legend('Synthesized signal','Correct envelope');