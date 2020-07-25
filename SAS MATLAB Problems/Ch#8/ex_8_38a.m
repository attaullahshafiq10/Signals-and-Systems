% Script: ex_8_38a.m
%
% Create vectors for the numerators and the denominators of the
% terms in partial fraction expansion.
num1 = [-0.75];         % For H1(z). 
den1 = [1,-0.8];
num2 = [-0.0312];       % For H2(z). 
den2 = [1,1.2];
num3 = [0.7813];        % For H3(z). 
den3 = [1,-2];
% Use the function ss_longdiv developed in MATLAB Exercise 8.6 to
% find left and right sided components of the impulse response h[n].
h1 = ss_longdiv(num1,den1,21);            % Right sided. n = 0,1,2,...
h2 = ss_longdiv(num2,fliplr(den2),10);    % Left sided.  n = -1,-2,...
h3 = ss_longdiv(num3,fliplr(den3),10);    % Left sided.  n = -1,-2,...  
nleft = [-10:-1];
hleft = fliplr(h2+h3);
nright = [0:20];
hright = h1;
n = [nleft,nright];
h = [hleft,hright];
clf;
stem(n,h);