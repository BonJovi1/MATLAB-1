% spot the face given in 'F1.jpg' inside the image 'Faces.jpg'

% Import the images
f1 = rgb2gray(imread('F1.jpg'));
f2 = rgb2gray(imread('F2.jpg'));
main = rgb2gray(imread('Faces.jpg'));

%Normalized cross correlation

c = normxcorr2(f1,main);
[ypeak, xpeak] = find(c==max(c(:)));

xsize = size(f1,2)
ysize = size(f1,1)

xcoo = xpeak-xsize;
ycoo = ypeak-ysize;

imshow(main);
imrect(gca, [xcoo+1, ycoo+1, xsize, ysize]);
