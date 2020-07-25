function [out,states] = ss_iir2(inp,coeffs,states)
  % Extract the filter states.
  r1 = states(1);
  r2 = states(2);
  % Extract the coefficients.
  b0 = coeffs(1);
  b1 = coeffs(2);
  b2 = coeffs(3);
  a1 = coeffs(5);
  a2 = coeffs(6);
  % Compute the output sample.
  r0 = inp-a1*r1-a2*r2;
  out = b0*r0+b1*r1+b2*r2;
  % Update the filter states:  r1<-r0,  r2<-r1
  states(1) = r0;
  states(2) = r1;
end