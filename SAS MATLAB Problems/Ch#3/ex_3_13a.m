% Script : ex_3_13a
%
% Set parameters.
r1 = 0.922;         
omega1 = 0.7086;
d1 = 1.05;
d2 = -5.8583;
n = [0:49];   % Vector of sample indices.
% Compute the natural response.
yh = d1*(r1.^n).*cos(omega1*n)+d2*(r1.^n).*sin(omega1*n);
% Graph the natural response.
clf;
p1 = stem(n,yh);
axis([-0.5,49.5,-6,6]);
title('Natural response y_h(t) for Example 3.13 part (a)');
xlabel('Index n');
ylabel('Amplitude');