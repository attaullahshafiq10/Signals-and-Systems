% Script : matex_1_1a
%
% Construct a vector of time instants.
t = linspace(0,5,1000);
% Compute the signal at time instants in vector "t".
x1 = 5*sin(12*t);
% Graph the signal.
clf;
plot(t,x1);
xlabel('Time (sec)');
ylabel('x_1(t)');