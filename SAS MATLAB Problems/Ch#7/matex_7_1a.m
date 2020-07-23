% Script: matex_7_1a.m
%
[sr,si] = meshgrid([-6:0.3:6],[-15:0.5:15]);
s = sr+j*si;
Xs = @(s) (s+0.5)./((s+0.5).^2+4*pi*pi);  % Eqn.(7.8)
XsMag = abs(Xs(s));
XsMag = XsMag.*(XsMag<=2)+2.*(XsMag>2);
shading interp;         % Shading method: Interpolated
colormap copper;        % Specify the color map used.
m1 = mesh(sr,si,XsMag);
axis([-6,6,-15,15]);
% Adjust transparency of surface lines.
set(m1,'EdgeAlpha',0.6','FaceAlpha',0.6);
% Specify x,y,z axis labels.
xlabel('\sigma');
ylabel('j\omega');
zlabel('|X(s)|');
% Specify viewing angles. 
view(gca,[23.5,38]);