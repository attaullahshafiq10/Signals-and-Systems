% Script: ex_7_37a.m
%
% Create vectors for the numerator and the denominator of H(s).
num = [1,1];
den = [1,2,2];
% Compute zeros and poles of H(s).
z = roots(num);
p = roots(den);
% Graph zeros and poles.
clf;
plot(real(z),imag(z),'o',real(p),imag(p),'x');
axis([-2,1,-2,2]);
xlabel('\sigma');
ylabel('j\omega');
grid;