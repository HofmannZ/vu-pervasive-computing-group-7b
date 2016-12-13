function numOfRoundObjects = countObjects(im)
%takes an image as input

  im1=rgb2gray(im);
  %convert image to a grayscale image

  level=graythresh(im1);
  %the threshold value according to Otsu method

  im2=im2bw(im1,level);
  %threshold image (any data type)

  im3=imopen(im2,strel('disk',10));
  %eliminate remaining round disks of 10 pixel radius size 
                                   
  im4=imcomplement(im3);
  %invert the colors

  im5=imopen(im4,strel('disk',50));
  %determine the round disks of 50 pixel radius size 
                                    
  [labels, numlabels]=bwlabel(im5);
  %identifies all BLOBS

  numOfRoundObjects = numlabels;
  %determine number of round objects

  disp (['Number of objects found is : ',num2str(numlabels)]);
  %display the answer

  subplot(5,1,1); imshow(im1);
  subplot(5,1,2); imshow(im2);
  subplot(5,1,3); imshow(im3);
  subplot(5,1,4); imshow(im4);
  subplot(5,1,5); imshow(im5);
  %subplot all the intermediate images
  
end
