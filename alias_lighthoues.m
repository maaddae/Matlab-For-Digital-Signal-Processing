load('lighthouse.mat');

xx2  = xx(1:2:end,1:2:end);
xx3  = xx(1:3:end,1:3:end);

xr1 = (-2).^(0:6);
L = length(xr1);
nn = ceil((0.999:1:4*L)/4);    %<-- Round up to the integer part
xr1hold = xr1(nn);

subplot(2,2,1), show_img(xx,0,1,colormap(gray(256))); title('Original Lighthouse');
subplot(2,2,2), show_img(xx2,0,1,colormap(gray(256))); title('Downsampled Lighthouse (2)');
subplot(2,2,3), show_img(xx3,0,1,colormap(gray(256))); title('Downsampled Lighthouse (3)');