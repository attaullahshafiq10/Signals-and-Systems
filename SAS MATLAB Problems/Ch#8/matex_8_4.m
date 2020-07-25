% Script: matex_8_4.m
%
% Set polynomial coefficients.
A = [5,7,0,3,-2];        % Coefficients a_4, ..., a_0
B = [8,6,-3,1,-4,2];     % Coefficients b_5, ..., b_0
% Reverse the ordering of coefficients.
tmpA = fliplr(A)         % Coefficients a_0, ..., a_4
tmpB = fliplr(B)         % Coefficients b_0, ..., a_5
% Use function conv().
tmpC = conv(tmpA,tmpB)   % Coefficients c_0, ..., a_9
% Reverse the ordering of coefficients for the product.
C = fliplr(tmpC)         % Coefficients c_9, ..., c_0