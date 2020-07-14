% Script : ex_1_6a.m
%
% Compute samples of the signal x(t).
t=[-0.5:0.005:3];       % Vector of time instants.
x1 = sin(2*pi*1.5*t);   % First component.
x2 = sin(2*pi*2.5*t);   % Second component.
x = x1+x2;              % The sum.
% Graph the results.
clf;
subplot(3,1,1);
plot(t,x1);
axis([-0.5,3,-1.2,1.2]);
xlabel('t');
title('x_{1}(t) = sin(2\pi 1.5t)');
grid;
subplot(3,1,2);
plot(t,x2);
axis([-0.5,3,-1.2,1.2]);
xlabel('t');
title('x_{2}(t) = sin(2\pi 2.5t)');
grid;
subplot(3,1,3);
plot(t,x);
axis([-0.5,3,-2.2,2.2]);
xlabel('t');
title('x(t) = x_{1}(t)+x_{2}(t)');
grid;