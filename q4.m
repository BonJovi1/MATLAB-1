% RESIZENN:- using nearest neighbour interpolation 
% RESIZEBL:- using bilinear interpolation

filename = {'ellipse.png', 'bandw.png', 'F1.jpg'};
for file = filename
    a = imread(char(file));
    
    img1 = RESIZENN(a, 5);
    img2 = RESIZENN(a, 10);
    img3 = RESIZEBL(a, 5);
    img4 = RESIZEBL(a, 10);
    
    subplot(2, 2, 1);
    image(img1);
    
    subplot(2, 2, 2);
    image(img3);
    
    subplot(2, 2, 3);
    image(img2);
    
    subplot(2, 2, 4);
    image(img4);
    
end