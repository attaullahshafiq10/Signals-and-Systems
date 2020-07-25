function [x] = ss_longdiv(num,den,n)
  [q,r] = ss_longdiv_util(num,den);
  x = q;
  for nn = 2:n,
    [q,r] = ss_longdiv_util(r,den);
    x = [x,q];
  end;  
end