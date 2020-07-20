% Script: ex_5_25.m
%
% Compute the energy spectral density for discrete-time pulse with L=5.
% Edit the next line to experiment.
L = 5;
Omg = [-1:0.005:1]*pi+eps;
XDTFT = sin(0.5*Omg*(2*L+1))./sin(0.5*Omg);
Gx = XDTFT.*XDTFT;
% Compute the total signal energy.
pow1 = sum(Gx(1:400))*0.005*pi/2/pi  % Total energy. Should be equal to 2L+1.
% Compute the energy in the frequency interval -pi/10 < Omega < pi/10
Omg2 = [-0.1:0.001:0.1]*pi+eps;
XDTFT2 = sin(0.5*Omg2*(2*L+1))./sin(0.5*Omg2);
Gx2 = XDTFT2.*XDTFT2;
pow2 = sum(Gx2(1:200))*0.001*pi/2/pi
% Compute the percentage of signal energy in the frequency interval -\pi/10< Omega< pi/10
pow2/pow1