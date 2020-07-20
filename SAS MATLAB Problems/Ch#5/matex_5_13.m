% Script: matex_5_13.m
%
t = [0:1023]/1024*3;    % 1024 samples in one period.
x = (t<=1);             % x(t)=1 if t<=1
% Compute and print approximate EFS coefficients for
% k=0,...,10.
for k = 0:10,
  coeff = ss_efsapprox(x,k);
  str = sprintf('k=%3d, magnitude=%0.5f, phase=%0.5f',...
    k,abs(coeff),angle(coeff));
  disp(str);
end; 