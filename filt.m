Im=imread('img2.jpg');
subplot(2,2,1)
imshow(Im);
title('original');

I = rgb2gray(Im);
%[m,n]=size(a);

Isp = imnoise(I,'salt & pepper',0.02);
subplot(2,2,2)
imshow(Isp);
title('noise');

%Canny ------------------------------------------
cannyResult = edge(Isp,'canny');
subplot(2,2,3)
imshow(cannyResult);
title('canny');