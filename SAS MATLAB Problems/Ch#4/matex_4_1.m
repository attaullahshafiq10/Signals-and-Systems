% Script : matex_4_1.m
%
m = 4;             % Number of harmonics to be used.
t = [-7:0.01:7];   % Create a vector of time instants.
f0 = 1/3;          % Fundamental frequency is f0 = 1/3 Hz.
omega0 = 2*pi*f0;
x = 1/3;           % Recall that a0=1/3.
                   % We will start by setting x(t)=a0.
% Start the loop to compute the contribution of each harmonic.
for k = 1:m,
  ak = 1/(pi*k)*sin(k*omega0);
  bk = 1/(pi*k)*(1-cos(k*omega0));
  x = x+ak*cos(k*omega0*t)+bk*sin(k*omega0*t);
end;
% Graph the resulting approximation to x(t).
clf;
plot(t,x); grid; 
title('Approximation using m=4'); 
xlabel('Time (sec)');
ylabel('Amplitude');