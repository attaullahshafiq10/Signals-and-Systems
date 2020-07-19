% Script file for Example 2.8.

%
R = 2e6;           % Set R=2 megaOhms and C=1 microFarad.    
C = 1e-6;
t = [-1:0.01:8];   % Create a vector of time instants.
tau = R*C;         % Compute the time constant.
y = (1-exp(-t/tau)).*(t>=0);   % Compute output signal.
clf;
% Graph the output signal. Also mark the time constant with a
% red dashed line.
plot(t,y,'b-',[tau,tau],[0,1.2],'r--');
axis([-1,8,-0.2,1.2]);
text(tau,-0.05,'\tau');
title('Output signal y(t) for Example 2.8');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;