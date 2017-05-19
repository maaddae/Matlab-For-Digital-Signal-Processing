function [xx,tt] = gen_sin(A,ff,dur,ph)
tt = 0:1/(100*ff):dur;   %-- gives 100 samples per period
xx = A*cos((2*pi*ff*tt) + ph);