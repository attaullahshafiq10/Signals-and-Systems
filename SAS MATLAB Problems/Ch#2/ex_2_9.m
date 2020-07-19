% Script file for Example 2.9.

%
A = 1;        % Set pulse amplitude.
w = 1;        % Set pulse width.
t = [-3:0.01:3];   % Create a vector of time instants.
% Compute the two parts of the signal from Eqns. (2-79) and
% (2-80).
y1 = A*(1-exp(-2*w)*exp(-4*t));
y2 = A*(exp(2*w)-exp(-2*w))*exp(-4*t);
% Construct the solution vector "y" by combining the two parts
% "y1" and "y2" with the use of logical operators.
y = y1.*((t>=-w/2)&(t<w/2))+y2.*(t>=w/2);
% Graph the output signal. Also show the input pulse with dashed red lines.
clf;
plot(t,y,'b-',0.5*w*[-3,-1,-1,1,1,3],A*[0,0,1,1,0,0],'r--');
axis([-3,3,-0.2,1.2]);
title('Output signal y(t) for Example 2.9');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;