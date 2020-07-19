% Script : matex_2_1c.m
%
t = [0:0.01:4];               % Create a time vector
x1 = cos(2*pi*5*t);           % Test signal 1
x2 = exp(-0.5*t);             % Test signal 2
alpha1 = 2;                   % Set parameters alpha1
alpha2 = 1.25;                %   and alpha2
x = alpha1*x1+alpha2*x2;      % Combined signal
% Define anonymous functions for the systems in Example 2.1
sys_a = @(x) 5*x;
sys_b = @(x) 5*x+3;
sys_c = @(x) 3*x.*x;
sys_d = @(x) cos(x);
% Test the system in part (c) of Example 2.1
y1 = sys_c(x1);
y2 = sys_c(x2);
y_exp = alpha1*y1+alpha2*y2;  % Expected response for a linear system
y_act = sys_c(x);             % Actual response
clf;                          % Clear figure 
subplot(1,2,1);               
plot(t,y_exp);                % Graph expected response
title('y_{exp} = \alpha_1 y_1 + \alpha_2 y_2') 
xlabel('t (sec)');
ylabel('Amplitude');
subplot(1,2,2);
plot(t,y_act);                % Graph actual response   
title('y_{act} = Sys_c\{\alpha_1 x_1 + \alpha_2 x_2\}') 
xlabel('t (sec)');
ylabel('Amplitude');