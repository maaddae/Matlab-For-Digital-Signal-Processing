I = imread('football.jpg'); 
Ihsv = rgb2hsv(I); 
IErH = edge(Ihsv(:,:,1),'roberts'); 
IErS = edge(Ihsv(:,:,2),'roberts');

IErV = edge(Ihsv(:,:,3),'roberts'); 
subplot(3,3,1), imshow(I);title('Origin'); 
subplot(3,3,4), imshow(IErH);title('Roberts-Hue'); 
subplot(3,3,5), imshow(IErS);title('Roberts-Saturation'); 
subplot(3,3,6), imshow(IErV);title('Roberts-Value');   
IEsH = edge(Ihsv(:,:,1),'sobel'); 
IEsS = edge(Ihsv(:,:,2),'sobel'); 
IEsV = edge(Ihsv(:,:,3),'sobel'); 
subplot(3,3,1), imshow(I);title('Origin'); 
subplot(3,3,7), imshow(IEsH);title('Sobel-Hue'); 
subplot(3,3,8), imshow(IEsS);title('Sobel-Saturation'); 
subplot(3,3,9), imshow(IEsV);title('Sobel-Value');   
Ihsv(:,:,3) = IErV; Irrgb = hsv2rgb(Ihsv); 
subplot(3,3,2), imshow(Irrgb);title('Robert-Color');   
Ihsv(:,:,3) = IEsV; Isrgb = hsv2rgb(Ihsv); 
subplot(3,3,3), imshow(Isrgb);title('Sobel-Color'); 