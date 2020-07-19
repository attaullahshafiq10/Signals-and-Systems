% Script : matex_2_5b.m
% 
t = [0:0.1:1];     % Vector of time instants
% Compute the exact solution.
y = 1-exp(-4*t);   % Eqn.(2.187)
% Compute the approximate solution using ode45().
rc2 = @(t,y) -4*y+4;
[t,yhat] = ode45(rc2,t,0);
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
err_pct = (yhat-y')./y'*100;
subplot(2,1,2);
plot(t(2:max(size(t))),err_pct(2:max(size(t))),'ro'); grid
title('Percent approximation error');
xlabel('Time (sec)');
ylabel('Percent error');