
A= 15;
k=linspace(1,100,200);
t=linspace(1,100,200);
yy = (A./k).*(sin(2*pi.*k.*t));

stem(t,yy)