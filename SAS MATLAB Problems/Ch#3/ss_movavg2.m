function y=ss_movavg2(x)
% Length-2 Moving Average Filter
  persistent xnm1;
  if isempty(xnm1)
    xnm1 = 0;
  end;  
  y = (x+xnm1)/2;
  xnm1 = x;