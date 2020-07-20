function x = ss_invdtfs(c,idx)
  x = zeros(size(idx)); % Create all-zero vector.
  N = length(c);        % Period of the coefficient set.
  for nn = 1:length(idx),
    n = idx(nn);
    tmp = 0;
    for kk = 1:length(c),
      k = kk-1;         % MATLAB indices start with 1.
      tmp = tmp+c(kk)*exp(j*2*pi/N*k*n);
    end;
    x(nn) = tmp;
  end;  
end