% Script file for Example 2.15b.

%
t = [0:0.01:3];   % Create a vector of time instants
% Compute the natural response using Eqn. (2.105)
yh = 2*exp(-3*t)+10.5*t.*exp(-3*t);
% Graph the natural response
clf;
plot(t,yh,'b-');
axis([0,3,-1,4]);
title('Natural response y_h(t) for Example 2.15 part (b)');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;