function xnat = ss_natsamp(xa,Ts,d,t)
  t1 = (mod(t,Ts)<=d*Ts);
  xnat = xa(t).*t1;
end