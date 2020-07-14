function x = ss_pulse(t)
  x = ss_step(t+0.5)-ss_step(t-0.5);