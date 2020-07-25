% Script: matex_8_13b.m
%
syms z n Yz
Y1 = 19+z^(-1)*Yz;             % z-transform of y[n-1]
Y2 = 53+19*z^(-1)+z^(-2)*Yz;   % z-transform of y[n-2] 
Yz = solve(Yz-5/6*Y1+1/6*Y2,Yz);   % Solve for Y(z)
yn = iztrans(Yz);                  % Inverse z-transform of Y(z)
n = [0:10];
y = eval(yn);
clf;
stem(n,y);
axis([-0.5,10.5,-1,8]);