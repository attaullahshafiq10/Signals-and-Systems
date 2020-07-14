function xtilde = ss_per(x,idx)
  N = length(x);   % Period of the signal.
  n = mod(idx,N);  % Modulo indexing.
  nn = n+1;        % MATLAB indices start with 1.
  xtilde = x(nn);
end

