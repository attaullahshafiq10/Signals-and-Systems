% Script : matex_2_4.m
%
Ts = 0.1;          % Time increment
t = [0:Ts:1];      % Vector of time instants
% Compute the exact solution.
y = 1-exp(-4*t);   % Eqn.(2.186)
% Compute the approximate solution using Euler method.
yhat = zeros(size(t));
yhat(1) = 0;      % Initial value.
for k = 1:length(yhat)-1,
  g = -4*yhat(k)+4;          % Eqn.(2.188)
  yhat(k+1) = yhat(k)+Ts*g;  % Eqn.(2.189)
end;
% Graph exact and approximate solutions.
clf;
subplot(2,1,1);
plot(t,y,'-',t,yhat,'ro'); grid;
title('Exact and approximate solutions for RC circuit');
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Exact solution','Approximate solution',...
  'Location','SouthEast');
% Compute and graph the percent approximation error.
err_pct = (yhat-y)./y*100;
subplot(2,1,2);
plot(t(2:length(t)),err_pct(2:length(t)),'ro'); grid
title('Percent approximation error');
xlabel('Time (sec)');
ylabel('Error (%)');