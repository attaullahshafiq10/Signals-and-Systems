function y = ss_movavg4(x)
% Length-4 Moving Average Filter
  persistent xnm1 xnm2 xnm3;
  if isempty(xnm1)
    xnm1 = 0;
  end;  
  if isempty(xnm2)
    xnm2 = 0;
  end;  
  if isempty(xnm3)
    xnm3 = 0;
  end;  
  y = (x+xnm1+xnm2+xnm3)/4;
  xnm3 = xnm2;
  xnm2 = xnm1;
  xnm1 = x;