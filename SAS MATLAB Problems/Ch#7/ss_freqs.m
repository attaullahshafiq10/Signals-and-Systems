function [mag,phs] = ss_freqs(zrs,pls,gain,omega)
  nz = length(zrs);       % Number of zeros.
  np = length(pls);       % Number of poles.
  nomg = length(omega);   % Number of frequency points.
  s = j*omega;            % Get points on the imaginary axis.
  mag = ones(1,nomg);
  phs = zeros(1,nomg);
  if (nz > 0),
    for n = 1:nz
      mag = mag.*abs(s-zrs(n));
      phs = phs+angle(s-zrs(n));
    end;  
  end;  
  if (np > 0),
    for n = 1:np
      mag = mag./abs(s-pls(n));
      phs = phs-angle(s-pls(n));
    end;  
  end;   
  mag = mag*gain;
  phs = wrapToPi(phs);