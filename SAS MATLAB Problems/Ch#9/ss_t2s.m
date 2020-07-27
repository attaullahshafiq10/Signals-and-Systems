function [A,B,C,d] = ss_t2s(num,den)
  nden = length(den);   % Size of denominator vector
  N = nden - 1;         % Order of system
  % If 'num' has fewer elements than 'den', put zeros in front.
  while (length(num)<nden)
    num = [0,num];
  end;  
  % Divide all coefficients by leading denominator coefficient
  num = num/den(1);
  den = den/den(1);
  num = fliplr(num);    % Reorder numerator coefficients
  den = fliplr(den);    % Reorder denominator coefficients
  A = [zeros(N-1,1),eye(N-1);-den(1:N)];
  B = [zeros(N-1,1);1];
  C = num(1:N)-num(N+1)*den(1:N);
  d = num(N+1);
end