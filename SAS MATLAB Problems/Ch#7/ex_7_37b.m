% Script : ex_7_37b.m
%
% Create a vector of time instants.
t = [-1:0.01:6];
% Compute and graph the impulse response.
h = exp(-t).*cos(t).*(t>=0);
clf;
plot(t,h);
axis([-1,6,-0.2,1.2]);
xlabel('t (sec)');
ylabel('Amplitude');
title('h(t)');
grid;