function x_env = ss_envdet(x_am,Ts,tau)
  x_am = x_am.*(x_am>0);   % Rectify the AM signal.
  % Create a vector to hold samples of the envelope.
  x_env = zeros(size(x_am));
  nSamp = length(x_am);    % Number of samples in "x_am".
  out = -1;
  % The loop to compute the output.
  for i=1:nSamp,
    inp = x_am(i);
    if (inp>=out)    % Case 1: x_am(t) > vc(t)
      out = inp;             
    else             % Case 2: x_am(t) < vc(t)
      out = out*(1-Ts/tau);  
    end;
    x_env(i) = out;
  end; 