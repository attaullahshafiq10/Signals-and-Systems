% Script : ex_4_10a.m
%
% Create a vector of time instants.
t = [-0.25:0.005:2.25];
% Set an anonymous function for one period of the half-wave rectified sinusoid.
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
% Graph the magnitude and phase of the line spectrum.
clf;
subplot(2,1,1);
stem(k,abs(ck));
axis([-15.5,15.5,0,0.5]);
xlabel('k');
title('|c_k|');
subplot(2,1,2);
stem(k,angle(ck));
axis([-15.5,15.5,-4,4]);
xlabel('k');
title('\angle c_{k}');