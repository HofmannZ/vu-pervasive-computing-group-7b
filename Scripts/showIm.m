im4=rgb2gray(im3);
% convert image to a grayscale image

im5=im2bw(im4, 0.04);
% threshold image (any data type)

im6 = imclose(im5, strel('disk', 4));
% determine and remove the round disks of 6 pixel radius size


