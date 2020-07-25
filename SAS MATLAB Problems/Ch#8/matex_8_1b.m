% Script: matex_8_1b.m
%
[zr,zi] = meshgrid([-1.5:0.03:1.5],[-1.5:0.03:1.5]);
z = zr+j*zi;
Xz = @(z) z.*(z-0.7686)./(z.*z-1.5371*z+0.9025);   % Eqn.(8.9)
XzMag = abs(Xz(z));
XzMag = XzMag.*(XzMag<=12)+12.*(XzMag>12);
% Set the trajectory.
r = 1;                  % Radius of the trajectory.
Omega = [0:0.005:1]*2*pi;
tr = r*exp(j*Omega);
% Produce a mesh plot and hold it.
shading interp;         % Shading method: Interpolated
colormap copper;        % Specify the color map used.
m1 = mesh(zr,zi,XzMag);
set(m1,'EdgeAlpha',0.6','FaceAlpha',0.6);
hold on;
% Superimpose a plot of X(z) magnitude values evaluated
% on the trajectory using 'plot3' function.
m2 = plot3(real(tr),imag(tr),abs(Xz(tr)),'b-','LineWidth',1.5);
% Show the unit-circle in red.
m3 = plot3(real(tr),imag(tr),zeros(size(tr)),'r-','LineWidth',1.5);
hold off;
axis([-1.5,1.5,-1.5,1.5]);
% Specify x,y,z axis labels.
xlabel('Re[z]');
ylabel('Im[z]');
zlabel('|X(z)|');
% Specify viewing angles. 
view(gca,[56.5 40]);