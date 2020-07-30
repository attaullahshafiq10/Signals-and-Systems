function x_am = ss_switchmod(msg,Bc,fc,Ts,f1,f2)
  nSamp = length(msg);         % Number of samples in "msg".
  t = [0:nSamp-1]*Ts;          % Vector of time instants.
  carrier = Bc*cos(2*pi*fc*t);
  % Compute input to the diode switch.
  v_in = carrier+msg;          % Eqn. (11.36)
  % Simulate the diode switch.
  v_out = v_in.*(carrier>=0);  % Eqn. (11.37)
  % Design the bandpass filter.
  [numz,denz] = butter(5,[2*f1*Ts,2*f2*Ts],'bandpass');
  % Process switch output through bandpass filter.
  x_am = filter(numz,denz,v_out);