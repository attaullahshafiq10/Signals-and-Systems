% Script: matex_9_4b.m
%
% Compute elements of the state vector
x1 = phi11-2*phi12;
x2 = phi21-2*phi22;
% Graph elements of the state vector
clf;
subplot(2,1,1)
plot(t,x1); grid;
title('x_{1}(t)');
subplot(2,1,2)
plot(t,x2); grid;
title('x_{2}(t)');