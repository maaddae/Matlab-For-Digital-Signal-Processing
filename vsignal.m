%---loops to generate signal
M = 200;
for k=1:M
x(k) = k;
y(k) = cos( 0.001*pi*x(k)*x(k) );
end
subplot(4,1,1);
plot( x, y, 'ro-' ) 
title('Loop')

%---vectors to generate signal
M = 200;
y = cos( 0.001*pi*(1:M).*(1:M) );
subplot(4,1,2);
plot( 1:M, y, 'ro-' )
title('Vectorization')

%---loops to generate signal
N = 200;
for k=1:N
xk(k) = k/50;
rk(k) = sqrt( xk(k)*xk(k) + 2.25 );
sig(k) = exp(j*2*pi*rk(k));
end
subplot(4,1,3)
plot( xk, real(sig), 'mo-' )
title('Loop')

%---vectors to generate signal
N = 200;
xk = (1:N)./50;
rk = sqrt(xk.*xk + 2.25);
sigk = exp(j*2*pi.*rk);
subplot(4,1,4);
plot(xk, real(sigk), 'mo-')
title ('Vectorization')