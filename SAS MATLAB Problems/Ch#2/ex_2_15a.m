% Script file for Example 2.15a.
%
t = [0:0.01:3];   % Create a vector of time instants
% Compute the natural response using Eqn. (2.104)
yh = 2*exp(-t).*cos(5*t)+3*exp(-t).*sin(5*t);
% Graph the natural response
clf;
plot(t,yh,'b-');
axis([0,3,-2,4]);
title('Natural response y_h(t) for Example 2.15 part (a)');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;