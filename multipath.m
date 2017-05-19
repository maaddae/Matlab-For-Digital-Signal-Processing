function rvt = multipath(A,f,a,b,c)
d1=abs(a-c);
d2=abs(a-b)+abs(b-c);
t1=d1/(3*10^8);
t2=d2/(3*10^8);
rvt=abs(A*exp(-2*pi*f*j*t1)-A*exp(-2*pi*f*j*t2));

plot(c,rvt)
