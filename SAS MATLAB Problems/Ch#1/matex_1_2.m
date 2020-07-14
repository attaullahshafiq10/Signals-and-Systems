% Script : matex_1_2.m
%
tp = [-1,0,1,3,4,5,6];
xp = [0,0,1,-1,-1,0,0];
t = [-1:0.01:6];
x = interp1(tp,xp,t,'linear');
clf;
plot(t,x,'b-',tp,xp,'ro');
grid;