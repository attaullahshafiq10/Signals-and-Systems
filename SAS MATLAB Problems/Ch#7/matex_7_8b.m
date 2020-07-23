% Script: matex_7_8b.m
%
% Create vectors for the numerator and the denominator of the system
% function.
num = [1,0,1];
den = [1,5,17,13];
% Create a system function object.
sys1 = tf(num,den);
t = [0:0.01:5];    % Vector of time instants.
% Compute the impulse response of the system.
h = impulse(sys1,t);
% Compute the unit-step response of the system.
y = step(sys1,t);
% Graph the responses.
clf;
subplot(2,1,1);
plot(t,h);
xlabel('t (sec)');
ylabel('Amplitude');
title('Impulse response h(t)');
grid;
subplot(2,1,2);
plot(t,y);
xlabel('t (sec)');
ylabel('Amplitude');
title('Unit-step response y(t)');
grid;