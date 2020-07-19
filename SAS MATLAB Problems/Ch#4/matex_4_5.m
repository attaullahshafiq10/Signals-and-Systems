% File: matex_4_5.m
%
R = 1e6;
C = 1e-6;
fc = 1/(2*pi*R*C);   % The critical frequency
f = [-500:500]/500;  % Vector of frequency values
Hf = 1./(1+j*f/fc);  % Evaluate system function
% Graph the magnitude and the phase
clf;
subplot(2,1,1);
plot(f,abs(Hf)); grid;
axis([-1,1,-0.2,1.2]);
ylabel('Magnitude');
xlabel('Frequency (Hz)');
subplot(2,1,2);
plot(f,angle(Hf)); grid;
ylabel('Phase (rad)');
xlabel('Frequency (Hz)');