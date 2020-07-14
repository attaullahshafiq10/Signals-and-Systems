function x = ss_tri(t)
  x = ss_ramp(t+1)-2*ss_ramp(t)+ss_ramp(t-1);