ftrue = phantom(128);
figure;
imshow(ftrue);
theta = 0:1:179; 
[g,xp] = radon(ftrue,theta);
N1 = size(g,1)
figure;
imagesc(theta,xp,g);
% Unfiltered back projection
output_size = max(size(ftrue));

dtheta = theta(2) - theta(1);
I1 = iradon(g,dtheta,output_size);
N2 = size(I1)
figure;
imshow(I1);
% Filtered Backprojection
I2 = iradon(g,theta);
figure;
imshow(I2);

% adding noise to g
J = imnoise(g,'gaussian',1,5);
figure;
imshow(J);
output_size = max(size(ftrue));
dtheta = theta(2) - theta(1);
I3 = iradon(g,dtheta,output_size);
figure;
imshow(I3);
