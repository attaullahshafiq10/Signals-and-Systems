% Script file for Example 2.22.
%
t = [-1:0.01:5];   % Create a vector of time instants.
% Compute the segments of the signal.
y1 = 1-exp(-t);              % Case 2
y2 = -1+4.4366*exp(-t);      % Case 3
y3 = -0.1353-1.9525*exp(-t); % Case 4
y4 = 0.1353-7.3891*exp(-t);  % Case 5
% Construct the solution vector "y" by combining the four parts
% "y1", "y2", "y3" and "y4" with the use of logical operators.
y = y1.*((t>=0)&(t<1))+...
    y2.*((t>=1)&(t<2))+...
    y3.*((t>=2)&(t<3))+...
    y4.*((t>=3)&(t<4));
% Graph the output signal.
clf;
plot(t,y);
axis([-1,5,-0.5,0.7]);
title('Output signal y(t) for Example 2.22');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;