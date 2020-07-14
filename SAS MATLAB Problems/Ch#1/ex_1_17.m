% Script : ex_1_17.m
%
n = [0:34];                % Create a vector of indices.
x1 = 2*cos(0.4*pi*n);      % First sinusoid.
x2 = 1.5*sin(0.48*pi*n);   % Second sinusoid.
x = x1+x2;                 % Add the two components.
% Graph the results.
clf;
subplot(3,1,1);
stem(n,x1);
axis([-0.5,34.5,-4,4]);
xlabel('Index n');
title('x_{1}[n]=2 cos(0.4\pi n)');
subplot(3,1,2);
stem(n,x2);
axis([-0.5,34.5,-4,4]);
xlabel('Index n');
title('x_{2}[n]=1.5 sin(0.48\pi n)');
subplot(3,1,3);
stem(n,x);
axis([-0.5,34.5,-4,4]);
xlabel('Index n');
title('x[n]=x_{1}[n]+x_{2}[n]');