% Script file for Example 2.11.

%
R = 1;        % Set R=1 Ohm.
C = 0.25;     % Set C=0.25 Farads.
yh0 = 5;      % Initial value of the homogeneous solution.
alpha = 1/(R*C);  
t = [0:0.01:3];    % Create a vector of time instants.
% Compute the homogeneous solution. Refer to Section 2.5.3.
yh = yh0*exp(-alpha*t);
clf;
plot(t,yh);
title('Homogeneous solution y_h(t) for Example 2.11.');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;