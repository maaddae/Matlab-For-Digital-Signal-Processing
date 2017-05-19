function [xx,tt] = syn_sin(fk, Xk, fs, dur, tstart)
%SYN_SIN   Function to synthesize a sum of cosine waves
%  usage:
%    [xx,tt] = syn_sin(fk, Xk, fs, dur, tstart)
%      fk = vector of frequencies
%              (these could be negative or positive)
%      Xk = vector of complex amplitudes: Amp*eˆ(j*phase)
%      fs = the number of samples per second for the time axis
%     dur = total time duration of the signal
%  tstart = starting time (default is zero, if you make this input optional)
%      xx = vector of sinusoidal values
%      tt = vector of times, for the time axis
%
%    Note: fk and Xk must be the same length.
%             Xk(1) corresponds to frequency fk(1),
%             Xk(2) corresponds to frequency fk(2), etc.


l1=length(Xk);
l2=length(fk);
if(l1~=l2); % A error checking was provided to make sure that
% the lengths of fk and Xk are the same.     
error('Xk must have the same length with fk');
end

if nargin<5, tstart = 0; end
xx = zeros(1,(dur-tstart)*fs+1);
n = length(Xk); 

for k=1:n
    tt = tstart:1/fs:dur;
    yy(:,k) = Xk(k)*exp(j*2*pi*fk(k)*tt);
    xx = xx+yy(:,k)';
end



