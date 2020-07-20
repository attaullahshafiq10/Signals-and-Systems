% Script: ex_5_2.m
%
% Compute the signal.
n = [-4:14];
x = cos(0.2*pi*n);
% DTFS coefficients.
k = [0:9];
c = [0,0.5,0,0,0,0,0,0,0,0.5];
% Graph the signal and the DTFS spectrum.
clf;
subplot(2,1,1);
stem(n,x);
axis([-4.5,14.5,-1.2,1.2]);
xlabel('Sample index n'); 
ylabel('Amplitude');
title('$\tilde{x}[n]$','Interpreter','latex');
subplot(2,1,2);
stem(k,c);
axis([-0.5,9.5,-0.2,0.8]);
xlabel('DTFS index k'); 
ylabel('Amplitude');
title('c_{k}');