imageA = imread('img1','jpg');
imageB = imread('img2','jpg');

imageA = imageA(:,:,1);
imageB = imageB(:,:,1);

figure, imshow(imageA)
title('Image A - Img-1')
figure, imshow(imageB)
title('Image B -  Img-2')

fftA = fft2(double(imageA));
fftB = fft2(double(imageB));

figure, imshow(abs(fftshift(fftA)),[24 100000]), colormap gray
title('Image A FFT2 Magnitude')
figure, imshow(angle(fftshift(fftA)),[-pi pi]), colormap gray
title('Image A FFT2 Phase')
figure, imshow(abs(fftshift(fftB)),[24 100000]), colormap gray
title('Image B FFT2 Magnitude')
figure, imshow(angle(fftshift(fftB)),[-pi pi]), colormap gray
title('Image B FFT2 Phase')


fftC = abs(fftA).*exp(1i.*angle(fftB));
fftD = abs(fftB).*exp(1i.*angle(fftA));

imageC = ifft2(fftC);
imageD = ifft2(fftD);


cmin = min(min(abs(imageC)));
cmax = max(max(abs(imageC)));

dmin = min(min(abs(imageD)));
dmax = max(max(abs(imageD)));

figure, imshow(abs(imageC), [cmin cmax]), colormap gray
title('Image C  Magnitude')
figure, imshow(abs(imageD), [dmin dmax]), colormap gray
title('Image D  Magnitude')


% saveas(1,'imageA.png')
% saveas(2,'imageB.png')
% saveas(3,'imageAfftmag.png')
% saveas(4,'imageAfftpha.png')
% saveas(5,'imageBfftmag.png')
% saveas(6,'imageBfftpha.png')
% saveas(7,'imageC.png')
% saveas(8,'imageD.png')