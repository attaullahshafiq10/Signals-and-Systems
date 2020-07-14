% Script : matex_1_1c
%
% Construct a vector of time instants.
t = [0:0.01:5];
% Compute the signal at time instants in vector "t".
x2 = (exp(-3*t)-exp(-6*t)).*(t>=0);
% Graph the signal.
clf;
plot(t,x2);
xlabel('Time (sec)');
ylabel('x_2(t)');