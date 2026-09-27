clc;
clear all;
close all;
x=[1 -1 2 -2 3 -3 4 -4];
h=[-1  1];
ln=length(h);
m=mod(length(x),ln);
if(m~=0)
    x=[x zeros(1,ln-m)];
end
q=length(x)/ln;
o=zeros(1,length(x)+ln-1);
for i=0:q-1
    s=cconv(x(ln*i+1:ln*i+ln),h);
    for j=1:2*ln-1
        o(j+i*ln)=o(j+i*ln)+o(j);   
    end
end
disp('Output Sequence is: ');
disp(abs(o));
subplot(3,1,1);
stem(x);
grid on;
title('x(n)');
xlabel('Time------->');
ylabel('Amplitude------->');

subplot(3,1,2);
stem(h);
grid on;
title('h(n)');
xlabel('Time------->');
ylabel('Amplitude------->');

subplot(3,1,3);
stem(o);
grid on;
title('Output Sequence(Output Add)');
xlabel('Time------->');
ylabel('Amplitude------->');