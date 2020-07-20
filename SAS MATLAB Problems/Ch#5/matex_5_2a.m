% Script: matex_5_2a
%
% Compute DTFS coefficients for the signal used in Edxample 5.4
x = [0,1,2,3,4];
c = ss_dtfs(x,[0:4])
% Reconstruct the signal from its DTFS coefficients
x = ss_invdtfs(c,[-12:15]);
clf;
stem([-12:15],real(x))  % Use real() to eliminate residual imaginary parts
                        % due to roundoff error