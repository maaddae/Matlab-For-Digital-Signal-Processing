Im = imread('test.jpg'); % Read in image
I = rgb2gray(Im);
%1. Generate Noisy Image  
Isp = imnoise(I,'salt & pepper',0.02); % add 3% (0.03) salt and pepper noise 

subplot(1,2,1), imshow(Isp); title('Salt&Pepper Noisy'); 
Ig = imnoise(I,'gaussian',0.02); % add Gaussian noise (with 0.02 variance) 
subplot(1,2,2), imshow(Ig); title('Gaussian Noisy');

%2. Mean Filter  
figure; tic; 
k = ones(3,3) / 9; % define mean filter 
Isp_m = imfilter(Isp,k); % apply to salt and pepper image 
Ig_m = imfilter(Ig,k); % apply tp gaussian image 
toc;   

subplot(1,2,1), imshow(Isp_m);  title('mean sp'); % Display result image 
subplot(1,2,2), imshow(Ig_m); title('mean g'); % Display result image

% 3. Median Filter  
figure; 
tic; 
Isp_m = medfilt2(Isp,[3 3]); % apply to salt and pepper image 
Ig_m =medfilt2(Ig,[3 3]); % apply tp gaussian image 

subplot(1,2,1), imshow(Isp_m); title('median sp'); % Display result image 
subplot(1,2,2), imshow(Ig_m); title('median g');% Display result image 
toc; 


% 4. conservative  
figure; 
tic; 
dim = size(I);  

Imax = ordfilt2(Isp,9,ones(3,3));  
Imin = ordfilt2(Isp,1,ones(3,3));   


Isp_m =  Isp;    
for x = 1: dim(1)  
    for y = 1: dim(2)     
        if(Isp_m(x,y) < Imin(x,y))     
            Isp_m(x,y) = Imin(x,y);   
        elseif(Isp_m(x,y) > Imax(x,y))       
            Isp_m(x,y) = Imax(x,y);   
        end 
    end
end


Imax = ordfilt2(Ig,9,ones(3,3));  
Imin = ordfilt2(Ig,1,ones(3,3));  
Ig_m =  Ig;    

for x = 1: dim(1)  
    for y = 1: dim(2)   
        if(Ig_m(x,y) < Imin(x,y))     
            Ig_m(x,y) = Imin(x,y);   
        elseif(Ig_m(x,y) > Imax(x,y))       
            Ig_m(x,y) = Imax(x,y);   
        end
    end
end
toc;
subplot(1,2,1), imshow(Isp_m); title('conserve sp');  
subplot(1,2,2), imshow(Ig_m); title('conserve g'); 