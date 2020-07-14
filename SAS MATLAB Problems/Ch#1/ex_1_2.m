% Script : ex_1_2.m
%
t=[-1:0.005:5];    % Vector of time instants.
% Compute x1.
x1 = 2*((t>=0)&(t<1))+((t>=1)&(t<2))-((t>=2)&(t<3));
% Compute x2.
x2 = 0.5*t.*((t>=0)&(t<2))+(-2*t+5).*((t>=2)&(t<3))+(t-4).*((t>=3)&(t<4));
g1 = x1+x2;  % Eqn. (1.5)
g2 = x1.*x2; % Eqn. (1.6)
% Graph the results.
clf;
subplot(2,2,1);
plot(t,x1);
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x_{1}(t)');
grid;
subplot(2,2,2);
plot(t,x2);
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x_{2}(t)');
grid;
subplot(2,2,3);
plot(t,g1);
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('g_{1}(t)=x_{1}(t)+x_{2}(t)');
grid;
subplot(2,2,4);
plot(t,g2);
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('g_{2}(t)=x_{1}(t) x_{2}(t)');
grid;