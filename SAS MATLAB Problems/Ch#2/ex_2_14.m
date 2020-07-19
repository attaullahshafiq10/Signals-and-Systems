% Script file for Example 2.14.

%
t = [0:0.01:3];   % Create a vector of time instants
% Compute the natural response using Eqn. (2.95)
yh = 16.5*exp(-2*t)-15*exp(-3*t);
% Graph the output signal
clf;
plot(t,yh,'b-');
axis([0,3,-1,4]);
title('Natural response y_h(t) for Example 2.14.');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;