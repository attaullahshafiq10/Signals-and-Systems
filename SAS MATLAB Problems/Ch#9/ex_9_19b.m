% Script: ex_9_19b.m
%
% Important: Run the script "ex_9_19a.m" first.

% Find the output signal symbolically.
yn = C*xn
% Evaluate and graph the output signal.
n = [0:19];
y = subs(yn,'n',n);
clf;
stem(n,y);
xlabel('n');
title('y[n]');