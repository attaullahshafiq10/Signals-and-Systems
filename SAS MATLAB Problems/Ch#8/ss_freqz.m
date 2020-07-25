function [mag,phs] = ss_freqz(zrs,pls,gain,Omega)
  nz = length(zrs);        % Number of zeros.
  np = length(pls);        % Number of poles.
  nOmg = length(Omega);    % Number of frequency points.
  z = exp(j*Omega);        % Get points on the unit-circle.
  mag = ones(1,nOmg);
  phs = zeros(1,nOmg);
  if (nz > 0),
    for n = 1:nz
      mag = mag.*abs(z-zrs(n));
      phs = phs+angle(z-zrs(n));
    end;  
  end;  
  if (np > 0),
    for n = 1:np
      mag = mag./abs(z-pls(n));
      phs = phs-angle(z-pls(n));
    end;  
  end;   
  mag = mag*gain;
  phs = wrapToPi(phs);  