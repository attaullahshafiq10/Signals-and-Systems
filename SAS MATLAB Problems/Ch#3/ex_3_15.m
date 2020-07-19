% Script : ex_3_15.m
% 
A = 20;         % Amplitude of sinusoidal input signal.
Omg = 0.2*pi;   % Radian frequency of sinusoidal input signal.
alpha = 0.1;    % alpha for the exponential smoother.
beta = 1-alpha;
% Compute coefficients k1 and k2. Refer to Eqn. (3.87).
k1 = alpha*A*(1-beta*cos(Omg))/(1-2*beta*cos(Omg)+beta*beta)
k2 = alpha*A*beta*sin(Omg)/(1-2*beta*cos(Omg)+beta*beta)
n = [0:49];     % Vector of indices.
% Compute the transient response, the steady-state response and
% the forced response.
yt = 2.7129*(0.9.^n);                % Eqn. (3.90)
yss = k1*cos(Omg*n)+k2*sin(Omg*n);   % Eqn. (3.91)
y = yt+yss;                            
% Graph the results.
clf;
subplot(3,1,1);
stem(n,yt);
axis([-0.5,49.5,-4,6]);
title('Transient response y_{t}[n]');
xlabel('Index n');
ylabel('Amplitude');
subplot(3,1,2);
stem(n,yss);
axis([-0.5,49.5,-4,6]);
title('Steady-state response y_{ss}[n]');
xlabel('Index n');
ylabel('Amplitude');
subplot(3,1,3);
stem(n,y);
axis([-0.5,49.5,-4,6]);
title('Forced response y[n] = y_{t}[n]+y_{ss}[n]');
xlabel('Index n');
ylabel('Amplitude');