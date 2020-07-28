% Script: ex_10_1.m
%
% Define anonymous function for Eqn. (10.23).
omg0 = @(omgc,p) omgc*sqrt((100/(100-p))^2-1);
% Define anonymous function for the system function.
H = @(omg,omgc) 1./(1+j*omg/omgc);
% Set omgc to 1 rad/s and compute omg0 for 1 percent magnitude deviation.
omgc = 1;
o1 = omg0(omgc,1)
% Compute time delay and its deviation from ideal.
td1 = -angle(H(o1,omgc))/o1   % Actual time delay
slope = -o1/omgc              % Slope of the phase at dc
td1lin = -slope/o1            % Time delay if phase were linear
td1dev = (td1-td1lin)/td1lin  % Deviation
% Set omgc to 1 rad/s and compute omg0 for 5 percent magnitude deviation.
o2 = omg0(omgc,5)
% Compute time delay and its deviation from ideal.
td2 = -angle(H(o2,omgc))/o2   % Actual time delay
slope = -o2/omgc              % Slope of the phase at dc
td2lin = -slope/o2            % Time delay if phase were linear
td2dev = (td2-td2lin)/td2lin  % Deviation