% Script: matex_6_9b.m
%
n = [0:99];
x = cos(0.1*pi*n)+0.7*sin(0.2*pi*n);
x1 = downsample(x,4);
x2 = upsample(x1,4);
hr = [0,0.25,0.5,0.75,1,0.75,0.5,0.25,0];   % FOH filter
x3 = conv(x2,hr);
x3 = x3(5:104);    % Compensate for 4 samples of delay
n = [0:99];
stem(n,x);
hold on;
plot(n,x3,'r');
hold off;
xlabel('n');