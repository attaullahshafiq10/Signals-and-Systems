% Script: ex_8_35a.m
%
% Create a vector of sample indices.
n = [-10:20];
% Compute the input signal.
x = (0.9*exp(j*0.2*pi)).^n;
% Graph real and imaginary parts of the input signal.
clf;
subplot(2,1,1);
stem(n,real(x));
axis([-10.5,20.5,-4,4]);
xlabel('n');
title('Re\{ x[n] \}');
subplot(2,1,2);
stem(n,imag(x));
axis([-10.5,20.5,-4,4]);
xlabel('n');
title('Im\{ x[n] \}');