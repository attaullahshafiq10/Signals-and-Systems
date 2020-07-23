% Script: matex_6_7c.m
%
fs = 200;     % Sampling rate
Ts = 1/fs;    % Sampling interval
% Set index limits "n1" and "n2" to cover the time interval
% from -25 ms to +75 ms
n1 = -fs/40;
n2 = -3*n1;
n = [n1:n2];
t = n*Ts;     % Vector of time instants
xs = exp(-100*t).*(n>=0);    % Samples of the signal
% Generate a new, more dense, set of time values for the
% sinc interpolating functions
t2 = [-0.025:0.0001:0.1];
xr = zeros(size(t2));
for n=n1:n2,
  nn = n-n1+1;  % Because MATLAB indices start at 1
  xr = xr+xs(nn)*sinc((t2-n*Ts)/Ts);
end;
clf;
stem(t,xs,'^'); grid;
hold on;
plot(t2,xr,'r-');
hold off;
axis([-0.030,0.08,-0.2,1.1]);
title('Reconstruction using bandlimited interpolation'); 
xlabel('t (sec)');
ylabel('Amplitude');
text(0.015,0.7,sprintf('Sampling rate = %.3g Hz',fs));