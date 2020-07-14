% Script : ex_1_14.m
%
t = [-0.5:0.001:1.5];   % Create a vector "t" of time instants.
x = 5*cos(10*t+pi/3);   % Original signal.
xe = 2.5*cos(10*t);     % Even component. Eqn (1.114).
xo = -4.3331*sin(10*t); % Odd component. Eqn (1.115).
% Graph the signals.
clf;
subplot(3,1,1);
plot(t,x);
axis([-0.5,1.5,-5.5,5.5]);
xlabel('t (sec)');
title('x(t)');
grid;
subplot(3,1,2);
plot(t,xe);
axis([-0.5,1.5,-5.5,5.5]);
xlabel('t (sec)');
title('x_{e}(t)');
grid;
subplot(3,1,3);
plot(t,xo);
axis([-0.5,1.5,-5.5,5.5]);
xlabel('t (sec)');
title('x_{o}(t)');
grid;