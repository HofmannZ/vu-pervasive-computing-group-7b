D = find(imds.Labels == 'D', 1);
V = find(imds.Labels == 'V', 1);
Y = find(imds.Labels == 'Y', 1);

figure
subplot(1,3,1);
imshow(readimage(imds,D))
subplot(1,3,2);
imshow(readimage(imds,V))
subplot(1,3,3);
imshow(readimage(imds,Y))