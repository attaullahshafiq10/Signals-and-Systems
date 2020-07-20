% Script: matex_5_5c
%
xn = ones(1,10);   % Length-10 pulse signal.
Xk = fft(xn,500);  % X[k] = DFT of x[n] zero padded to 500.
k = [0:499];
Omega = 2*pi*k/500;
clf;
subplot(211)
plot(Omega,abs(Xk)); grid;
axis([0,2*pi,-1,11]);
xlabel('\Omega (rad)');
ylabel('Magnitude')
subplot(212)
plot(Omega,angle(Xk)); grid;
axis([0,2*pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');