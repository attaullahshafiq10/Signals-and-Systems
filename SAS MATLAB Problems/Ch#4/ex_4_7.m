% Script : ex_4_7.m
%
% Define an anonymous function for the EFS coefficients.
c = @(k,d) d*sinc(k*d);
% Create a vector of harmonic indices.
k = [-20:20];
% Compute and graph EFS coefficients for d = 0.1, 0.2, 0.3
clf;
subplot(3,1,1);
stem(k,c(k,0.1));
xlabel('Harmonic index');
title('c_{k} for d = 0.1');
subplot(3,1,2);
stem(k,c(k,0.2));
xlabel('Harmonic index');
title('c_{k} for d = 0.2');
subplot(3,1,3);
stem(k,c(k,0.3));
xlabel('Harmonic index');
title('c_{k} for d = 0.3');