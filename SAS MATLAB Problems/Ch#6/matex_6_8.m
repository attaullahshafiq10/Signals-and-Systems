% Script: matex_6_8.m
%
fs = 200;     % Sampling rate
Ts = 1/fs;    % Sampling interval
f = [-700:0.5:700];     % Vector of frequencies
Xa = 1./(100+j*2*pi*f); % Original spectrum
% Compute the spectrum of the impulse-sampled signal.
Xs = 1./(1-exp(-100*Ts)*exp(-j*2*pi*f*Ts));
% Compute system functions of reconstruction filters.
Hzoh = Ts*sinc(f*Ts).*exp(-j*pi*Ts);
Hfoh = Ts*sinc(f*Ts).*sinc(f*Ts);
Hr = Ts*((f>=-0.5*fs)&(f<=0.5*fs));
% Compute spectra of reconstructed signals.
Xzoh = Xs.*Hzoh;  % Eqn. (6.49)
Xfoh = Xs.*Hfoh;  % Eqn. (6.51)
Xr = Xs.*Hr;      % Eqn. (6.53)
% Graph the results.
clf;
subplot(3,1,1);
plot(f,abs(Xzoh),'-',f,abs(Xa),'--'); grid;
title('Spectr. of signal reconstr. through zero-order hold');
xlabel('f (Hz)');
ylabel('Magnitude');
legend('|X_{zoh}(f)|','|X(f)|');
subplot(3,1,2);
plot(f,abs(Xfoh),'-',f,abs(Xa),'--'); grid;
title('Spectr. of signal reconstr. through first-order hold');
xlabel('f (Hz)');
ylabel('Magnitude');
legend('|X_{foh}(f)|','|X(f)|');
subplot(3,1,3);
plot(f,abs(Xr),'-',f,abs(Xa),'--'); grid;
title('Spectr. of signal reconstr. through bandlimited interp.');
xlabel('f (Hz)');
ylabel('Magnitude');
legend('|X_{r}(f)|','|X(f)|');