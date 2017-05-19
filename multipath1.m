f0 = 150*10^6; 
t = 0:0.01:5; 
dt = 1500; xx1=0; dd=900; dx2=100;
t1 = sqrt(xx1^2+dt^2)/3*10^8;
t2 = sqrt(dd^2 + (dx2-xx1)^2)/3*10^8 + sqrt((dt-dd)^2+dx2^2)/3*10^8;
r = sin(2*pi*f0*(t-t1))-sin(2*pi*f0*(t-t2)); 
plot(t,r);
