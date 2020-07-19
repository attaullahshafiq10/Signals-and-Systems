% Script : matex_4_2.m
%
m = 5;             % Maximum number of harmonics to be used.
t = [-3:0.005:3];  % Create a vector of time instants.
f0 = 1/3;          % Fundamental frequency is f0=1/3 Hz.
omega0 = 2*pi*f0;
x = 1/3*ones(size(t));  % Recall that a0=1/3.
                        % We will start by setting x(t)=a0.
xmat = x;          % Row vector containing dc value of 1/3.
% Start the loop to compute the contribution of each harmonic.
for k = 1:m,
  ak = 1/(pi*k)*sin(k*omega0);
  bk = 1/(pi*k)*(1-cos(k*omega0));
  x = x+ak*cos(k*omega0*t)+bk*sin(k*omega0*t);
  xmat = [xmat;x]; % Append another row to matrix 'xmat'.
end;
% Graph the results.
clf; 
plot(t,xmat(2,:),'b--',t,xmat(3,:),'g-',t,xmat(5,:),'r-',...
   t,xmat(6,:),'m--'); grid; 
title('Approximation to x(t) using m=1,...,5');
xlabel('Time (sec)');
ylabel('Amplitude');
legend('x^{(1)}(t)','x^{(2)}(t)','x^{(4)}(t)','x^{(5)}(t)');