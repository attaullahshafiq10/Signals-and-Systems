function y = ss_conv2(x,h)
  N1 = length(x);  % Length of signal 'x'
  N2 = length(h);  % Length of signal 'h'
  N = N1+N2-1;     % Length of linear convolution result.
  Xk = fft(x,N);   % DFT of x[n] zero padded to N.
  Hk = fft(h,N);   % DFT of h[n] zero padded to N.
  Yk = Xk.*Hk;
  y = ifft(Yk,N);
end