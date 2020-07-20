% Script: matex_5_4.m
%
n = [-10:30];
ytilde = 9.9305*cos(pi*n/5-0.3139);    % Steady-state
x = 5*cos(pi*n/5).*(n>=0);
y = filter([1,-0.2],[1,-0.9,0.36],x);  % Solve diff. eqn.
clf;
p1 = stem(n-0.125,ytilde,'b');
hold on
p2 = stem(n+0.125,y,'r');
hold off
axis([-11,31,-12,12]);
xlabel('n');