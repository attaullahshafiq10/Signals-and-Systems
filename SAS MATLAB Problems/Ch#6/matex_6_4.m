% Script: matex_6_4.m
%
Xa = @(f) 2./(1+4*pi*pi*f.*f);
f = [-12:0.01:12];
fs = 4;       % Sampling rate.
Ts = 1/fs;    % sampling interval.
d = 0.6;      % Duty cycle
Xs = zeros(size(Xa(f)));
for k=-5:5,
  Xs = Xs+d*sinc(k*d)*Xa(f-k*fs);
end;
plot(f,Xs,'b-',f,2*d*sinc(f*d/fs),'r--'); grid;
axis([-12,12,-0.5,1.5]);