nn=0:100;
xx = 256*(rem(0:100,50)<10); 
bb = [1,-0.9]; 
yy = firfilt(bb,xx); 
subplot(2,1,1); 
stem(nn,xx(nn+1)); axis([0,75,-300,300]) 
subplot(2,1,2); 
stem(nn,yy(nn+1),'filled');axis([0,75,-300,300]) %­­Make black dots xlabel('Time Index (n)')
xlabel('Time Index (n)')

