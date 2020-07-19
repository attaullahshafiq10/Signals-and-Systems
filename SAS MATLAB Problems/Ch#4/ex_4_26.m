% Script : ex_4_26.m
%
% Create a vector of frequencies.
f = [-10:0.02:10]+0.0001;  % Add 0.0001 to avoid phase computation
                           % where magnitude is zero.
omg = 2*pi*f;
% Compute the transform.
Xf = j*2./omg.*(cos(omg)-1);
% Graph the imaginary part, the magnitude and the phase of the transform.
clf;
subplot(3,1,1);
plot(f,imag(Xf));
axis([-10,10,-2,2]);
xlabel('f (Hz)');
title('imag\{ X(f) \}');
grid;
subplot(3,1,2);
plot(f,abs(Xf));
axis([-10,10,0,2]);
xlabel('f (Hz)');
ylabel('Magnitude');
title('|X(f)|');
grid;
subplot(3,1,3);
plot(f,angle(Xf));
axis([-10,10,-pi,pi]);
xlabel('f (Hz)');
ylabel('Phase (rad)');
title('\angle X(f)');
grid;