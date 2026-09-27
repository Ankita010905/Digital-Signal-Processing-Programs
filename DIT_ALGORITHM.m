clc;
clear all;
close all;
v=[1 2 3 4 4 3 2 1];
subplot(3,1,1);
stem(v);
grid on;
title('Input signal');
xlabel('Time------->');
ylabel('Amplitude------->');
x=bitrevorder(v);
subplot(3,1,2);
stem(x);
grid on;
title('Input signal after Bit Reversal');
xlabel('Time------->');
ylabel('Amplitude------->');
N=8;
z=[];
for i=1:N/4:N
    g=[x(i),x(i+1)];
    y=butterfly(g,N/4);
    z=[z y];
end
z1=[];
for i=1:N/2:N
    g1=[z(i:i+3)];
    y1=butterfly(g1,N/2);
    z1=[z1 y1];
end
[z2]=butterfly(z1,N);
disp(z2);
subplot(3,1,3);
stem(abs(z2));
grid on;
title('N/4 Point DIT FFT Algorithm');
xlabel('Time------->');
ylabel('Amplitude------->');