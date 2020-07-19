% Script : matex_4_3c.m
%
k = [-25:25];        % Create a vector of index values.
ck = 1/3*sinc(k/3);  % Compute the EFS coefficients.
% Graph the line spectrum in polar format.
clf;
subplot(2,1,1);
stem(k,abs(ck));
axis([-25.5,25.5,-0.1,0.4]);
xlabel('Index k');
ylabel('Magnitude'); 
subplot(2,1,2);
stem(k,angle(ck));
axis([-25.5,25.5,-4,4]);
xlabel('Index k');
ylabel('Phase (rad)');