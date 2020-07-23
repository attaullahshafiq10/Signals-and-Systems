% Script: ex_7_35.m
%
% Set the zeros of the system function.
z1 = 1;
z2 = -2;
% Set the poles of the system function.
p1 = -1+j*2;
p2 = -1-j*2;
% Set "omg0" as the frequency of interest.
omg0 = 1.5;
% Compute the vectors from each zero and each pole to the frequency of interest on the imaginary axis.
B1 = j*omg0-z1
B2 = j*omg0-z2
A1 = j*omg0-p1
A2 = j*omg0-p2
% Compute the magnitude and the phase of the frequency response at "omg0".
Hmag = (abs(B1)*abs(B2))/(abs(A1)*abs(A2))
Hphs = angle(B1)+angle(B2)-angle(A1)-angle(A2)