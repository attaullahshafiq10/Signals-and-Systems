% Script file for Example 2.18.

%
t = [-1:0.005:1.5];       % Create a vector of time instants
h = 4*exp(-4*t).*(t>=0);  % Eqn. (2.140)
% Graph the impulse response
clf;
plot(t,h);
axis([-1,1.5,-1,5]);
title('Impulse response h(t) found in Example 2.18');
xlabel('t (sec)');
ylabel('Amplitude');
grid;