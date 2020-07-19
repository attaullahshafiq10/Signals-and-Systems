% Script file for Example 2.10.

%
A = 1;        % Set pulse amplitude.
w = 1;        % Set pulse width.
t = [-3:0.01:3];   % Create a vector of time instants.
% Compute the responses to u(t+w/2) and u(t-w/2)
% using Eqns. (2.66) and (2.67).
y1 = A*(1-exp(-4*(t+0.5*w))).*(t>=-0.5*w);
y2 = A*(1-exp(-4*(t-0.5*w))).*(t>=0.5*w);
% Compute the pulse response using superposition. Refer to
% Eqn. (2.65).
y = y1-y2;
% Graph the two step responses y1(t) and y2(t) along with the
% pulse response y(t) of the system.
clf;
subplot(3,1,1)
plot(t,y1); grid;
axis([-3,3,-0.2,1.2]);
title('y_1(t) = A Sys\{ u(t+w/2) \}');
xlabel('t (sec)'); 
ylabel('Amplitude');
subplot(3,1,2)
plot(t,y2); grid;
axis([-3,3,-0.2,1.2]);
title('y_2(t) = A Sys\{ u(t-w/2) \}');
xlabel('t (sec)'); 
ylabel('Amplitude');
subplot(3,1,3)
plot(t,y); grid;
axis([-3,3,-0.2,1.2]);
title('y(t) = y_1(t) - y_2(t)');
xlabel('t (sec)'); 
ylabel('Amplitude');