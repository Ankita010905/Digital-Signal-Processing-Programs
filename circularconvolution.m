clc;
clear all;
close all;
x1=input('Enter the first sequence:');
subplot(3,1,1);
stem(x1);
grid on;
xlabel('Number of Samples----->');
ylabel('Amplitude----->');
title('Original Signal x1');

x2=input('Enter the second sequence:');
subplot(3,1,2);
stem(x2);
grid on;
xlabel('Number of Samples----->');
ylabel('Amplitude----->');
title('Original Signal x2');
m=length(x1);
n=length(x2);
N=max(m,n);
N=m+n-1;
y=circonvt(x1,x2,N)
subplot(3,1,3);
stem(y);
grid on;
xlabel('Number of Samples----->');
ylabel('Amplitude----->');
title('Linear Convolution using Circular Convolution');