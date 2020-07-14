% Script : matex_1_1d.m
%
% Construct a vector of time instants.
t = [-2:0.01:3];
% Compute the signal at time instants in vector "t".
x3 = (exp(-3*t)-exp(-6*t)).*((t>=0)&(t<=1));
% Graph the signal.
clf;
plot(t,x3);
xlabel('t (sec)');
ylabel('x_{3}(t)');
grid;