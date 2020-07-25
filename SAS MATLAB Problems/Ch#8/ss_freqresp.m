function [mag,phs] = ss_freqresp(zer,pol,gain,Omega)
% Frequency response based on pole-zero distribution.
%
% This demo program is intended for use with the text
%   "Signals and Systems: A MATLAB-Integrated Approach"
%    by Oktay Alkin.
% Copyright (c) 2012 by Oktay Alkin.
% All rights reserved.

  nzer = max(size(zer));       % Number of zeros.
  npol = max(size(pol));       % Number of poles.
  nOmega = max(size(Omega));   % Number of frequency points.
  z = exp(j*Omega);            % Get points on the unit-circle.
  mag = ones(1,nOmega)*gain;   % Vector for magnitude values.
  phs = zeros(1,nOmega);       % Vector for phase values.
  for m = 1:nOmega,
    if (nzer > 0),
      for n = 1:nzer
        mag(m) = mag(m)*abs(z(m)-zer(n));
        phs(m) = phs(m)+angle(z(m)-zer(n));
      end;  
    end;  
    if (npol > 0),
      for n = 1:npol
        mag(m) = mag(m)/abs(z(m)-pol(n));
        phs(m) = phs(m)-angle(z(m)-pol(n));
      end;  
    end;   
  end;  