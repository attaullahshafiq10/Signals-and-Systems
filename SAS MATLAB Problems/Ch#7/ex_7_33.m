% Script: ex_7_33.m
%
num = [1,0,1];
den = [1,5,17,13];
% Compute zeros and poles of X(s).
z = roots(num);
p = roots(den);
% Graph zeros and poles.
clf;
plot(real(z),imag(z),'o',real(p),imag(p),'x');
axis([-3,1,-4,4]);
xlabel('\sigma');
ylabel('j\omega');
grid;