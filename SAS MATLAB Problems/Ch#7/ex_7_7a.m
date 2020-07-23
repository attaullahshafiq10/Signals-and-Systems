% Script: ex_7_7a.m
%
% Generate a grid of points on the s-plane.
[sr,si] = meshgrid([-1:0.1:3]+eps,[-5.5:0.1:5.5]*2*pi+eps);
s = sr+j*si;
% Evaluate X(s) on the grid.
tau = 1;   % Pulse width=1 sec.
% Define an anonymous function for the transform.
Xs = @(s) (1-exp(-s*tau))./s;
% Evaluate magnitude of X(s) at points on the grid.
XsMag = abs(Xs(s));
% Generate a vector of s values on the vertical axis.
omega = [-5.5:0.01:5.5]*2*pi+eps;
tr = j*omega;
% Produce a mesh plot.
clf;
shading interp;         % Shading method: Interpolated
colormap copper;        % Specify the color map used.
m1 = mesh(sr,si,XsMag);
axis([-1,3,-10*pi,10*pi]);
% Adjust transparency of surface lines.
set(m1,'EdgeAlpha',0.6','FaceAlpha',0.6);
% Specify x,y,z axis labels.
hold on;
m2 = plot3(real(tr),imag(tr),zeros(size(tr)),...
  real(tr),imag(tr),abs(Xs(tr)),...
  [-1,3],[0,0],[0,0]); 
m3 = stem3(real(tr([1:10:1100])),imag(tr([1:10:1100])),...
  abs(Xs(tr([1:10:1100]))));
hold off;
% Adjust transparency of surface lines.
set(m1,'FaceAlpha',0.4,'EdgeAlpha',0.6);
% Adjust colors and line thicknesses.
set(m2(1),'Color',[0.8,0,0],'Linewidth',1.5);
set(m2(2),'Color',[0,0,1],'Linewidth',1.5);
set(m2(3),'Color',[0,0,0],'Linewidth',1.5);
set(m3,'Marker','none','Color',[0.01,0.74,0.25]);
xlabel('\sigma');
ylabel('j\omega');
zlabel('|X(s)|');
% Specify viewing angles. 
view(gca,[45.5 46]);