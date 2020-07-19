% Script : matex_4_3b.m
%
k = [-25:25];        % Create a vector of index values.
ck = 1/3*sinc(k/3);  % Compute the EFS coefficients.
% Graph the line spectrum.
clf;
stem(k,ck); 
axis([-25.5,25.5,-0.1,0.4]);
xlabel('Index k');
ylabel('Coefficient'); 