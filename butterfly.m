function [z]= butterfly(x,N)
z=[];
z1=[];
z2=[];
for k=1:N/2
    w=exp(-j*2*pi*(k-1)/N);
    z1=[z1,x(k)+x(k+N/2)*w];
    z2=[z2,x(k)-x(k+N/2)*w];
end
z=[z1 z2];