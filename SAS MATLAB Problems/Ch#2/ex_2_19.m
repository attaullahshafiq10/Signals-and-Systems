% Script file for Example 2.19.
%
t = [0:0.01:5];            % Create a vector of time instants
h = 5.2*exp(-t).*sin(5*t); % Eqn. (2.143)
% Graph the impulse response
clf;
plot(t,h);
axis([0,5,-3,5]);
title('Impulse response h(t) found in Example 2.19');
xlabel('t (sec)');
ylabel('Amplitude');
grid;