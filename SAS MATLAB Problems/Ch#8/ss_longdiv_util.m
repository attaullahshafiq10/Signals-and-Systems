function [q,r] = ss_longdiv_util(num,den)
  M = max(size(num))-1;    % The order of the numerator.
  N = max(size(den))-1;    % The order of the denominator.
  % Append the shorter vector with zeros.
  if (M < N)
    num = [num,zeros(1,N-M)];
  elseif (M > N)
    den = [den,zeros(1,M-N)];
  end;
  [q,r] = deconv(num,den);   % Find quotient and remainder.
  r = r(2:length(r));        % Drop first element of remainder
                             % which is 0.
end