function [c] = ss_chebpol(N)
  if (N==0),
    c = [1];
  elseif (N==1),
    c = [1,0];
  else
    cnm1 = [1];
    cn = [1,0];
    for i = 2:N,
      c = 2*conv([1,0],cn)-[0,0,cnm1];
      cnm1 = cn;
      cn = c;
    end;
  end;    