clc;
   
    %% create a new figure to show the image . 
    newImg = imread('ella.jpg');
    figure(1);
    imshow(newImg);
    figure(2);
     %% create laplacian filter. 
    H = fspecial('laplacian');
     %% apply laplacian filter. 
    blurred = imfilter(newImg,H);
    imshow(blurred); title('Edge detected Image');

