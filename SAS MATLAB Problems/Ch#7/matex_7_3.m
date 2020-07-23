% Script: matex_7_3.m
%
% Create vectors for the numerator and the denominator of the transform.
num = [1,-1,-4,4];
den = [1,7,21,37,30];
% Compute zeros and poles of the transform.
z = roots(num);
p = roots(den);
% Graph zeros and poles along with the axes.
clf;
plot(real(z),imag(z),'o',real(p),imag(p),'x',...
     [-3,3],[0,0],'k:',[0,0],[-3,3],'k:');
xlabel('\sigma');
ylabel('j\omega');