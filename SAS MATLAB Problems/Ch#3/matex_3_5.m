% Script file for MATLAB Exercise 3.5

%
input = ones(1,50);     % Input data stream
output = [];            % Create an empty output stream
clear sys1;             % Clear persistent variables
nsamp = length(input);  % Number of samples in the input stream
for n=1:nsamp
  x = input(n);         % "x" is the current input sample
  y = sys1(x);          % "y" is the current output sample
  output = [output,y];  % Append "y" to the output stream
end;
% Graph the output signal
clf;
stem([0:nsamp-1],output);
title('The output signal for MATLAB Exercise 3.5');
xlabel('Index n');
ylabel('y[n]');