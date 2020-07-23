function newPhs = wrapToPi(phs)
% This is a functional equivalent of the MATLAB function with the
% same name that should have been included in the Signal Processing
% Toolbox.
%
% USAGE: newPhs = wrapToPi(phs)
  tmp1 = phs/pi+1;
  tmp2 = mod(tmp1,2)-1;
  newPhs = tmp2*pi;
end