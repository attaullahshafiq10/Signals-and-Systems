function [y,n] = ss_conv(h,x,N1,N2)
% Convolution with correct sample indices
  y = conv(h,x);
  Ny = length(y);       % Number of samples in y[n]
  nfirst = N1+N2;       % Correct index for the first sample
                        %   in vector "y"
  nlast = nfirst+Ny-1;  % Correct index for the last sample
                        %   in vector "y"
  n = [nfirst:nlast]; 