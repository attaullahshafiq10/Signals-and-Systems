function g = ss_cshift(x,m)
  N = length(x);   % Length of x[n].
  n = [0:N-1];     % Vector of indices.
  g = ss_per(x,n-m);
end