% Script file for Example 2.16.
%
t = [0:0.01:3];   % Create a vector of time instants
% Compute the transient response using Eqn. (2.116)
yt = 4*exp(-4*t);
% Compute the steady-state response using Eqn. (2.117).
yss = cos(8*t)+2*sin(8*t);
% Compute the forced response.
y = yt+yss;
% Graph the three signals.
clf;
subplot(3,1,1);
plot(t,yt);
axis([0,3,-4,5.5]);
title('Transient response y_t(t) for Example 2.16');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;
subplot(3,1,2);
plot(t,yss);
axis([0,3,-4,5.5]);
title('Steady-state y_{ss}(t) for Example 2.16');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;
subplot(3,1,3);
plot(t,y);
axis([0,3,-4,5.5]);
title('Forced response y(t)=y_t(t)+y_{ss}(t) for Example 2.16');
xlabel('t (sec)'); 
ylabel('Amplitude');
grid;