function c = ss_dtfs(x,idx)
  c = zeros(size(idx)); % Create all-zero vector.
  N = length(x);        % Period of the signal.
  for kk = 1:length(idx),
    k = idx(kk);
    tmp = 0;
    for nn = 1:length(x),
      n = nn-1;         % MATLAB indices start with 1.
      tmp = tmp+x(nn)*exp(-j*2*pi/N*k*n);
    end;
    c(kk) = tmp/N;
  end;  
end