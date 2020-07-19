% Script: matex_4_4b.m
%
f0 = 1/3;          % Fundamental frequency.
omega0 = 2*pi*f0;
t = [-3:0.01:6];   % Create a vector of time instants.
x=zeros(size(t));  % Start with a vector of all zeros.
for k=-25:25
    k = k+eps;     % Avoid division by zero.
    cReal = 1/(2*pi*k)*sin(k*omega0);
    cImag = 1/(2*pi*k)*(cos(k*omega0)-1);
    x = x+(cReal+j*cImag)*exp(j*k*omega0*t);
end;
% Graph the signal.
clf;
plot(t,real(x)); grid;
title('Approximation to x(t)');
xlabel('Time (sec)');
ylabel('Amplitude');