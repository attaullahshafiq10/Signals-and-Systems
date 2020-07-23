function xzoh = ss_zohsamp(xa,Ts,d,t)
  t1 = (mod(t,Ts)<=d*Ts);
  xzoh = xa(t).*t1;
  flg = 0;
  for i=1:length(t),
    if not(t1(i)),
      flg = 0;
    elseif (t1(i) & (flg==0)),
      flg = 1;
      value = xzoh(i);
    end;  
    if (flg == 1),
      xzoh(i) = value;
    end;  
  end;
end