function c = ss_efsapprox(x,k)
  Nx = length(x);  % Size of vector 'x'
  Nk = length(k);  % Size of vector 'k'
  % Create a return vector same size as 'k'.
  c = zeros(1,Nk);
  Xk = fft(x)/Nx;  % Eqn. (5.304)
  % Copy the coefficients requested.
  for i = 1:Nk,
    kk = k(i);
    if (kk >= 0),
      c(i) = Xk(kk+1);
    else
      c(i) = Xk(Nx+1+kk);  
    end;  
  end;  
end