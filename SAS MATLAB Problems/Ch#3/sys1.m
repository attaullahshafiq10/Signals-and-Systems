function y = sys1(x)
  persistent wnm1 wnm2 wnm3;
  if isempty(wnm1)
    wnm1 = 1.0682;
  end;  
  if isempty(wnm2)
    wnm2 = 1.7149;
  end;  
  if isempty(wnm3)
    wnm3 = 0.1674;
  end;  
  wn = x+0.7*wnm1+0.8*wnm2-0.84*wnm3;
  y = 0.1*wn+0.2*wnm1+0.3*wnm2;
  wnm3 = wnm2;
  wnm2 = wnm1;
  wnm1 = wn;