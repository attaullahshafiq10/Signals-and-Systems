% Script : ex_1_6b.m
%
% Compute samples of the signal x(t).
t=[-0.5:0.005:6];       % Vector of time instants.
y1 = sin(2*pi*1.5*t);   % First component.
y2 = sin(2*pi*2.75*t);  % Second component.
y = y1+y2;              % The sum.
% Graph the results.
clf;
subplot(3,1,1);
plot(t,y1);
axis([-0.5,6,-1.2,1.2]);
xlabel('t');
title('y_{1}(t) = sin(2\pi 1.5t)');
grid;
subplot(3,1,2);
plot(t,y2);
axis([-0.5,6,-1.2,1.2]);
xlabel('t');
title('y_{2}(t) = sin(2\pi 2.75t)');
grid;
subplot(3,1,3);
plot(t,y);
axis([-0.5,6,-2.2,2.2]);
xlabel('t');
title('y(t) = y_{1}(t)+y_{2}(t)');
grid;