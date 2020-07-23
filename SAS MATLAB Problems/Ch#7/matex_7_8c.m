% Script: matex_7_8c.m
%
% Create vectors for the zeros and the poles of the system function.
zrs = [0,1];
pls = [-1,-2,-3];
% Create a system object using locations of zeros and poles.
sys2 = zpk(zrs,pls,10)
% Compute the response to sinusoidal input signal.
t = [0:0.01:3];    % Vector of time instants.
%t = [0:0.01:3];
x = cos(4*pi*t);
[y,t] = lsim(sys2,x,t);
% Graph the input and the output signals together.
clf;
plot(t,x,t,y);
xlabel('t (sec)');
ylabel('Amplitude');
legend('Input signal','Output signal');