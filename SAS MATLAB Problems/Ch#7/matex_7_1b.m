% Script: matex_7_1b.m
%
[sr,si] = meshgrid([-6:0.3:6],[-15:0.5:15]);
s = sr+j*si;
Xs = @(s) (s+0.5)./((s+0.5).^2+4*pi*pi);  % Eqn.(7.8)
XsMag = abs(Xs(s));
XsMag = XsMag.*(XsMag<=2)+2.*(XsMag>2);
shading interp;         % Shading method: Interpolated
colormap copper;        % Specify the color map used.
values = [[0:0.04:0.2],[0.3:0.1:2]];   % z-axis value for each contour.
m2 = contour(sr,si,XsMag,values); grid;
axis([-6,6,-15,15]);
% Specify x,y axis labels.
xlabel('\sigma');
ylabel('j\omega');