% Script file for MATLAB Exercise 3.2 part (a)
%
load 'djia.mat';        % Load the input data stream
output = [];            % Create an empty output stream
clear ss_movavg4;       % Clear persistent variables
nsamp = length(x2003);  % Number of samples in the input stream
for n=1:nsamp
  x = x2003(n);         % "x" is the current input sample
  y = ss_movavg4(x);    % "y" is the current output sample
  output = [output,y];  % Append "y" to the output stream
end;
% Graph input and output signals
clf;
plot([1:nsamp],x2003,[1:nsamp],output);
axis([1,252,7500,10500]);