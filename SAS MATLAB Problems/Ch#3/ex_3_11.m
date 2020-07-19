% Script : ex_3_11.m
%
n = [0:49];   % Vector of sample indices.
% First, set alpha=0.1 and compute the constant "c" for it.
alpha1 = 0.1;           
c1 = 2*(1-alpha1);  % y[-1] = 2;
% Compute the natural response.
yh1 = c1*(1-alpha1).^n;
% Next try with alpha=0.2.
alpha2 = 0.2;          
c2 = 2*(1-alpha2);  % y[-1] = 2;
% Compute the natural response.
yh2 = c2*(1-alpha2).^n;
% Graph the natural responses found.
clf;
subplot(2,1,1)
stem(n,yh1);
axis([-0.5,49.5,-0.25,2.25]);
title('Natural response y_{h}(t) of exponential smoother with \alpha=0.1');
xlabel('Index n'); 
ylabel('Amplitude');
subplot(2,1,2)
stem(n,yh2);
axis([-0.5,49.5,-0.25,2.25]);
title('Natural response y_{h}(t) of exponential smoother with \alpha=0.2');
xlabel('Index n'); 
ylabel('Amplitude');