function[y,n]=conv(x,nx,h,nh)
n=nx(1)+nh(1):nx(length(nx))+nh(length(nh));
[h1,nh1]=sigfold(h,nh);
for i=1:length(n)
    [h2,nh2]=sigshift(h1,nh1,n(i));
    [y1,n1]=sigmult(h2,nh2,x,nx);
    y(i)=sum(y1);
end
end