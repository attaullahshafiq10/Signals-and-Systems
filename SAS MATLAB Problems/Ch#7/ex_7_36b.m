% Script: ex_7_36b.m
%
% Graph the impulse response h(t).
t1 = [-5:0.01:0];  % Vector of negative time instants.
t2 = [0:0.01:5];   % Vector of positive time instants.
h1 = 4.5*exp(-3*t2);
h2 = 7.5*exp(t1)-18*exp(2*t1);
t = [t1,t2];
h = [h2,h1];
clf;
plot([-5,5],[0,0],'k:',[0,0],[-15,10],'k:',t,h,'b-');