function     [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
%BEAT    compute samples of the sum of two cosine waves
%  usage:
%       [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
%
%              A = amplitude of lower frequency cosine
%              B = amplitude of higher frequency cosine
%             fc = center frequency
%           delf = frequency difference
%          fsamp = sampling rate
%            dur = total time duration in seconds
%             xx = output vector of samples
%--Second Output:
%             tt = time vector corresponding to xx

tt = 0 : 1/fsamp : dur ;

sig1 = 2*pi*(fc - delf)*t;
sig2 = 2*pi*(fc + delf)*t;

xx = A*cos(sig1) + B*cos(sig2);

soundsc(xx,fsamp);

specgram(xx,1024,fsamp); colorbar