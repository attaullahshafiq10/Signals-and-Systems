% Script: matex_8_12a.m
%
states1 = [0,0];
states2 = [0,0];
coeffs1 = [1,2,-3,1,0.6,-0.27];
coeffs2 = [0,1,-2,1,-1.6,0.89];
x = ones(1,100);
y = zeros(1,100);
for n=1:100,
  inp = x(n);
  [w1,states1] = ss_iir2(inp,coeffs1,states1);
  [y(n),states2] = ss_iir2(w1,coeffs2,states2);
end;
clf;
stem([0:99],y);