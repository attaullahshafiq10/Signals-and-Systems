% Script: matex_10_2a.m
%
% Evaluate Chebyshev polynomials for N=2,4,6.
nu = [0:0.005:1.5];
c2 = ss_chebpol(2);
p2 = polyval(c2,nu);
c4 = ss_chebpol(4);
p4 = polyval(c4,nu);
c6 = ss_chebpol(6);
p6 = polyval(c6,nu);
% Graph Chebyshev polynomials.
clf;
plot(nu,p2,nu,p4,nu,p6);
axis([0,1.2,-2,12]);
legend('N=2','N=4','N=6','Location','NorthWest');
xlabel('\nu');
ylabel('C_N(\nu)');
title('Chebyshev polynomials for N=2,4,6'); 
grid;