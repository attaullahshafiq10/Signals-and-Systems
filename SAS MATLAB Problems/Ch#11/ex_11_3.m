% Script: ex_11_3.m
%
% Set parameters.
Ac = 4.648;
fc = 1000;
fm1 = 100;
fm2 = 200;
t = [0:0.02:20]*1e-3;  % Vector of time instants.
% Compute the message signal.
m = 3*cos(2*pi*fm1*t-pi/6)+2*sin(2*pi*fm2*t);
% Compute the AM signal.
x_am = (Ac+m).*cos(2*pi*fc*t);
% Compute the envelope. 
x_env = abs(Ac+m);
% Graph message signal and the AM signal with envelope.
clf;
subplot(2,1,1);
plot(1000*t,m);
xlabel('t (ms)');
ylabel('Amplitude');
title('Message signal  m(t)');
grid;
subplot(2,1,2);
plot(1000*t,x_am,'-',1000*t,x_env,'m--');
xlabel('t (ms)');
ylabel('Amplitude');
title('Tone modulated AM signal x_{AM}(t) and its envelope');
legend('AM signal','Envelope');
grid;