function y = ss_pconv(x,h)
  N = length(x);        % Period for all three signals.
  y = zeros(size(x));   % Create all-zero vector.
  for n = 0:N-1,
    tmp = 0;
    for k = 0:N-1,
      tmp = tmp+ss_per(x,k)*ss_per(h,n-k);
    end;
    nn = n+1;
    y(nn) = tmp;
  end;  
end