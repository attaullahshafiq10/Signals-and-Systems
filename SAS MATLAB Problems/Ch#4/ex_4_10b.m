% Script : ex_4_10b.m
%
% Compute the 3-harmonic approximation to the signal.
omg0 = 2*pi;
xhat = zeros(size(t));
for m=-3:3,
  xhat = xhat+ck(m+16)*exp(j*m*omg0*t);
end;  
xhat = real(xhat);  % In case there is residual imaginary part.
clf;
plot(t,x,t,xhat,'r');
axis([-0.25,2.25,-0.2,1.2]);
xlabel('t');
title('x(t) and its 3-harmonic approximation');
grid;