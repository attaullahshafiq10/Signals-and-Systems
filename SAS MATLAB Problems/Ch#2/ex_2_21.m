% Script file for Example 2.21.
%
R = 1;        % Set R=1 Ohm and C =1/4 Farad
C = 1/4;
tau = R*C;    % Time constant
t = [-3:0.01:3];   % Create a vector of time instants
% Compute the two parts of the signal from Eqn. (2.157)
y1 = 1-exp(-(t+0.5)/tau);
y2 = exp(-t/tau).*(exp(0.5/tau)-exp(-0.5/tau));
% Construct the solution vector "y" by combining the two parts
% "y1" and "y2" with the use of logical operators
y = y1.*((t>=-0.5)&(t<0.5))+y2.*(t>=0.5);
% Graph the output signal. Also show the input pulse with dashed
% red lines
clf;
plot(0.5*[-3,-1,-1,1,1,3],[0,0,1,1,0,0],'r--',t,y,'b-');
axis([-3,3,-0.2,1.2]);
title('Output signal y(t) for Example 2.21.');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;