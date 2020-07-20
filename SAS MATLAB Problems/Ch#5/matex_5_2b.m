% Script: matex_5_2b
%
% DTFS coefficients for the pulse train of Example 5.5 (see Fig. 5.4).
% Edit the next two lines to experiment.
N = 40;
L = 9;
x = [ones(1,L+1),zeros(1,N-2*L-1),ones(1,L)];
c = ss_dtfs(x,[0:N-1]);
clf;
stem([0:N-1],real(c));  % Use real() to eliminate residual imaginary parts
                        % due to roundoff error