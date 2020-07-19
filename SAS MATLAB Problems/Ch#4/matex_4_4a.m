% Script : matex_4_4a.m
%
k = [-25:25];      % Create a vector of index values.
k = k+eps;         % Avoid division by zero.
cReal = 1./(2*pi*k).*sin(2*pi*k/3);     
cImag = 1./(2*pi*k).*(cos(2*pi*k/3)-1); 
cMag = abs(cReal+j*cImag);
cPhs = angle(cReal+j*cImag);
% Graph the line spectrum.
clf;
subplot(2,1,1);
stem(k,cMag);
axis([-25.5,25.5,-0.1,0.4]);
title('|c_{k}|');
xlabel('Index k'); 
ylabel('Magnitude'); 
subplot(2,1,2); 
stem(k,cPhs);
axis([-25.5,25.5,-4,4]);
title('\angle c_{k}');
xlabel('Index k');
ylabel('Phase (rad)');