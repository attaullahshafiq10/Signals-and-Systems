% Script : ex_3_18.m
%
alpha = 0.1;   % Parameter for exponential smoother.
n = [-10:49];  % Vector of sample indices.
% Compute the impulse response.
h = alpha*(1-alpha).^n.*(n>=0);   % Eqn. (3.121)
% Graph the impulse response.  
stem(n,h);
axis([-10.5,49.5,-0.02,0.12]);
title('Impulse response h[n] of exponential smoother.');
ylabel('Amplitude');
xlabel('Index n');