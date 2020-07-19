% Script : ex_3_21.m
%
n = [-10:39];   % Vector of sample indices.
% Compute sections of y[n].
y1 = -9*(0.9.^n-1/0.9);   % Eqn. (3.140)
y2 = 9.8168*0.9.^n;       % Eqn. (3.142)
% Construct y[n] by adding the sections together.
y = y1.*((n>=0)&(n<=6))+...
    y2.*(n>6);
% Graph the response.
clf;
stem(n,y);
axis([-10.5,39.5,-1,6]);
title('Convolution result y[n] for Example 3.21');
ylabel('Amplitude');
xlabel('Index n');