nn=0:100;
xn=[256*(rem(0:100,50)<10)];
bb=[1,-0.9];
wn=firfilt(bb,xn);
subplot(3,1,1);
stem(nn,xn(nn+1));ylabel('x(n)');axis([0,50,-300,300])
subplot(3,1,2);
stem(nn,wn(nn+1),'filled');ylabel('w(n)');axis([0,50,-300,300])%­­Make black dots
for m=0:22;
    bb2(m+1)=0.9^m;
end
yn=firfilt(bb2,wn);
subplot(3,1,3);
stem(nn,yn(nn+1));
xlabel('Time Index (n)');ylabel('y(n)');axis([0,50,-300,300])
df = zeros(1,length(xn)+1)
df =[xn 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]-yn;
wcr = max(df)