% Script: matex_10_2b.m
%
% Evaluate Chebyshev polynomials for N=2,4,6.
nu = [0:0.005:1.5];
c2 = ss_chebpol(2);
p2 = polyval(c2,nu);
c4 = ss_chebpol(4);
p4 = polyval(c4,nu);
c6 = ss_chebpol(6);
p6 = polyval(c6,nu);
% Construct lowpass squared magnitude characteristics from squared
% Chebyshev polynomials.
mgs2 = 1./(1+0.16*p2.*p2);
mgs4 = 1./(1+0.16*p4.*p4);
mgs6 = 1./(1+0.16*p6.*p6);
clf;
plot(nu,mgs2,nu,mgs4,nu,mgs6);
axis([0,1.5,0,1.2]);
legend('N=2','N=4','N=6','Location','NorthEast');
xlabel('\nu');
ylabel('C_N(\nu)');
title('Squared magnitude for Chebyshev filters'); 
grid;