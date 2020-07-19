function y = ss_expsmoo(x,alpha)
% Exponential Smoother
  persistent ynm1;
  if isempty(ynm1)
    ynm1 = 0;
  end;  
  y = (1-alpha)*ynm1+alpha*x;
  ynm1 = y;