% Script : ex_1_4.m
%
% Set the parameters.
A = 2;        % Amplitude
f0 = 100;     % Frequency
phi = pi/4;   % Phase
t = [0:0.0001:0.02];    % Vector of time instants.
                        % 0 to 20 ms with 0.1ms increments.
xr = A*cos(2*pi*f0*t+phi);   % Real part of signal.
xi = A*sin(2*pi*f0*t+phi);   % Imaginary part of signal.
xmag = abs(xr+j*xi);    % Magnitude. Eqn (1.66).
xphs = angle(xr+j*xi);  % Phase. (Eqn (1.67).
% Graph the results.
clf;
subplot(3,1,1);
plot(t,xr,t,xi);
xlabel('t (sec)'); 
ylabel('Amplitude');
title('Complex signal x(t)'); 
legend('Real part x_{r}(t)','Imaginary part x_{i}(t)');
grid;
subplot(3,1,2);
plot(t,xmag);
axis([0,0.02,0,3]);
xlabel('t (sec)'); 
ylabel('Magnitude');
title('|x(t)|'); 
grid;
subplot(3,1,3);
plot(t,xphs);
axis([0,0.02,-pi,pi]);
xlabel('t (sec)'); 
ylabel('Phase (rad)');
title('\angle x(t)'); 
grid;
