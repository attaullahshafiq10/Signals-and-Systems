% Script: matex_5_5b
%
xn = ones(1,10);        % Length-10 pulse signal.
Xk = fft(xn,20);        % X[k] = DFT of x[n] zero padded to 20.
% Create a vector 'Omega' and compute the DTFT.
Omega = [-0.1:0.01:1.1]*2*pi+eps;
XDTFT = sin(5*Omega)./sin(0.5*Omega).*exp(-j*4.5*Omega);
% Compute frequencies that correspond to DFT samples.
k = [0:19];
Omega_k = 2*pi*k/20;
% Graph the DTFT and the DFT on the same coordinate system.
clf;
subplot(211);
plot(Omega,abs(XDTFT),'-',Omega_k,abs(Xk),'ro'); grid;
axis([-0.2*pi,2.2*pi,-1,11]);
xlabel('\Omega (rad)');
ylabel('Magnitude')
subplot(212)
plot(Omega,angle(XDTFT),'-',Omega_k,angle(Xk),'ro'); grid;
axis([-0.2*pi,2.2*pi,-pi,pi]);
xlabel('\Omega (rad)');
ylabel('Phase (rad)');