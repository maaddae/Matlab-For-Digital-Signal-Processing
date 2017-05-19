a=imread('img2.jpg');

b=im2double(a);
[m,n]=size(a);


%SOBEL----------------------------------------------------------------------------------

P(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        P(i,j)=-1*b(i,j)-2*b(i,j+1)-1*b(i,j+2)+0+0+0+1*b(i+2,j)+2*b(i+2,j+1)+1*b(i+2,j+2);
    end;
end;


R(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        R(i,j)=-1*b(i,j)+0+1*b(i,j+2)-2*b(i+1,j)+0+2*b(i+1,j+2)-1*b(i+2,j)+0+1*b(i+2,j+2);
    end;
end;

%original image
 subplot(3,2,1)
 or_image=imshow(a);
 title('Original  Image');
 
 
 %Sobel Operator
    Y=P+R;
  subplot(3,2,4)
  imshow(Y);
  title('Sobel');
 
%ROBERT------------------------------------------------------------------------------
L(1:m,1:n)=0;
for i=1:m-2;
    for j=1:m-2;
        L(i,j)=-1*b(i,j)+0+0+1*b(i+1,j+1);
    end;
end;

M(1:m,1:n)=0; 
for i=1:m-2;
    for j=1:m-2;
        M(i,j)=0-1*b(i,j+1)+1*b(i+1,j)+0;
    end;
end;

N=M+L;
subplot(3,2,2)
imshow(N);
title('Robert');

%PREWIT-----------------------------------------------------------------------------------
N(1:m,1:n)=0;
for i=1:m-2;
    for j=1:m-2;
        N(i,j)=-1*b(i,j)-1*b(i,j+1)-1*b(i,j+2)+0+0+0+1*b(i+2,j)+1*b(i+2,j+1)+1*b(i+2,j+2);
    end;
end;
O(1:m,1:n)=0;
for i=1:m-2;
    for j=1:m-2;
        O(i,j)=-1*b(i,j)+0+1*b(i,j+2)-1*b(i+2,j)+0+1*b(i+1,j+2)-1*b(i+2,j)+0+1*b(i+2,j+2);
    end;
end;

Z=N+O;
subplot(3,2,6) 
imshow(Z);
title('Prewit');


%Canny Edge
%Operator----------------------------------------------------------------------------------
grayImage= rgb2gray(a);
cannyResult = edge(grayImage,'canny');
subplot(3,2,5)
imshow(cannyResult);
title('canny');

%LoG---------------------------------------------------------------------------------------  
H = fspecial('laplacian');
blurred= imfilter(b,H);    
 
 subplot(3,2,3)
 imshow(blurred);
 title('LOG');


