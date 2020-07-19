% Script file for MATLAB Exercise 3.4 part (b)

%
xvec = [0,100*ones(1,18)];   % Vector to hold input signal
yvec = [10000,zeros(1,18)];  % Vector to hold output signal
c = 0.005;                   % Interest rate
offset = 1;                  % Offset to fix index issues
fprintf(1,'Index   Input  Output\n');  % Print header
% Start the loop to compute and print the output signal
for n=1:18
  yvec(offset+n)=(1+c)*yvec(offset+n-1)-xvec(offset+n);
  fprintf(1,'%5d  %5.2f  %5.2f\n',n,xvec(offset+n),yvec(offset+n)); 
end;
% Graph the output signal
stem([0:18],yvec);