% The following MATLAB
% code will synthesize a chirp:


fsamp = 11025;
dt = 1/fsamp;
dur = 1.8;
tt = 0 : dt : dur;
psi = 2*pi*(100 + 200*tt + 500*tt.*tt);
xx = real( 7.7*exp(j*psi) );
soundsc( xx, fsamp );
specgram(xx,1024,fsamp); colorbar
%plot(xx,fsamp);

