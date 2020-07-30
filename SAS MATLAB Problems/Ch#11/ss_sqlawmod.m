function x_am = ss_sqlawmod(msg,Bc,fc,Ts,a,b,f1,f2)
  nSamp = length(msg);          % Number of samples in "msg".
  t = [0:nSamp-1]*Ts;           % Vector of time instants.
  carrier = Bc*cos(2*pi*fc*t);
  % Compute input to the nonlinear device. 
  v_in = carrier+msg;           % Eqn. (11.47)
  % Simulate the nonlinear device switch.
  v_out = a*v_in+b*v_in.*v_in;  % Eqn. (11.46)
  % Design the bandpass filter.
  [num,den] = butter(5,[2*f1*Ts,2*f2*Ts],'bandpass');
  % Process v_out through bandpass filter.
  x_am = filter(num,den,v_out);