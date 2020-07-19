% Script : ex_3_13b.m
%
% Set parameters.
c1 = 5.12;
c2 = 3.52;
n = [0:49];   % Vector of sample indices.
% Compute the natural response.
yh = c1*((0.8).^n)+c2*n.*((0.8).^n);
% Graph the natural response.
clf;
p1 = stem(n,yh);
axis([-0.5,49.5,-5,10]);
title('Natural response y_h(t) for Example 3.13 part (b)');
xlabel('Index n');
ylabel('Amplitude');