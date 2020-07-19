% Script : ex_3_14.m
%
alpha = 0.1;  % alpha for the exponential smoother.
n = [0:49];   % Vector of sample indices.
% Compute the forced response for y[-1]=2.5
y = 1.5*((1-alpha).^(n+1))+1;
% Graph the forced response.
clf;
stem(n,y);
axis([-0.5,49.5,-0.5,3]);
title('Forced response y(t) of the system of Example 3.14.');
xlabel('Index n'); 
ylabel('Amplitude');