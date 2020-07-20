% Script: ex_5_3.m
%
% Compute the signal.
n = [-10:30];
x = 1+cos(0.2*pi*n)+2*sin(0.3*pi*n);
% DTFS coefficients.
k = [0:19];
c = [1,0,0.5,-j,0,0,0,0,0,0,0,0,0,0,0,0,0,j,0.5,0];
% Graph the signal and the DTFS spectrum.
clf;
subplot(3,1,1);
stem(n,x);
axis([-10.5,30.5,-4,4]);
xlabel('Sample index n'); 
ylabel('Amplitude');
title('$\tilde{x}[n]$','Interpreter','latex');
subplot(3,1,2);
stem(k,abs(c));
axis([-0.5,19.5,0,1.2]);
xlabel('DTFS index k'); 
ylabel('Magnitude');
title('$|\tilde{c}_{k}|$','Interpreter','latex');
subplot(3,1,3);
stem(k,angle(c));
axis([-0.5,19.5,-pi,pi]);
xlabel('DTFS index k'); 
ylabel('Phase (rad)');
title('Phase of c_{k}');