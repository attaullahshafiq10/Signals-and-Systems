% Script : ex_4_10b.m
%
% Create a vector of time instants.
t = [-0.25:0.005:2.25];
% Set an anonymous function for one period of the half-wave rectified
% sinusoid.
xp = @(t) sin(2*pi*t).*(t<=0.5);
% Compute the half-wave rectified sinusoid.
x = xp(mod(t,1));
% Compute the EFS coefficients for k=-15,...,15
k = [-15:15];
ck = zeros(size(k));
for i=2:2:length(k),
  kk = k(i);
  ck(i) = -1/pi/(kk*kk-1);
end;
ck(15) = j*0.25;   % This is c(-1)
ck(17) = -j*0.25;  % This is c(+1)
% Compute the 3-harmonic approximation to the signal.
omg0 = 2*pi;
xhat = zeros(size(t));
for m=-3:3,
  xhat = xhat+ck(m+16)*exp(j*m*omg0*t);
end;  
xhat = real(xhat);  % In case there is residual imaginary part.
plot(t,x,t,xhat,'r');
axis([-0.25,2.25,-0.2,1.2]);
xlabel('t');
title('x(t) and its 3-harmonic approximation');
grid;