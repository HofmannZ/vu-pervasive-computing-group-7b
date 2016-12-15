euroArea=31534;
euroPerimeter=631.274;
euroFF=0.9944;
% values of the features that we generated from example images

cardArea=355767;
cardPerimeter=2.383946e+03;
cardFF=0.7866;
% values of the features that we generated from example images

pinArea=3322;
pinPerimeter=3.700380e+02;
pinFF=0.3048;
% values of the features that we generated from example images

%vid=videoinput('macvideo',1);
% set the input for the video

%set(vid,'ReturnedColorSpace','rgb');
% set the colors

%start(vid);
% start the video

%input=getsnapshot(vid);
% create a snapshot

im2=rgb2gray(input);
% convert image to a grayscale image

im3=im2bw(im2, 0.4);
% threshold image (any data type)

im4=imcomplement(im3);
% invert the colors

im5 = imclose(im4, strel('disk', 6));
% determine and remove the round disks of 6 pixel radius size

[labels, numlabels] = bwlabel(im5);
% identifies all BLOBS

disp(numlabels)
% display the number of labels

vislabels(labels); 
% display the labeled components

stats = regionprops(labels, 'all');
% extract the properties of each detected BLOB

inputArea = stats(1).Area;
% retrieve the Area of the image

inputPerimeter = stats(1).Perimeter;
% retrieve the Perimeter of the image

inputFF = 4*pi*stats(1).Area/((stats(1).Perimeter)^2);
% formula that calculates the form factor with Area and Perimeter as input

if (inputFF > 0.9 && inputArea > 30000 && inputArea < 33000)
    % if the form factor is higher then 0.9 and the area is between 30000 and 33000
    
    disp ('The object is a euro');
    % shows a string in the display for the euro object
    
elseif (inputFF > 0.75 && inputFF < 0.85 && inputArea > 350000 && inputArea < 360000)
    % if the form factor is between 0.75 and 0.85 and the area is between 350000 and 360000
 
    disp ('The object is a card');
    % shows a string in the display for the card object
    
elseif (inputFF > 0.25 && inputFF < 0.35 && inputArea > 3000 && inputArea < 3500)
    % if the form factor is higher then 0.9 and the area is between 30000 and 33000 
    
    disp ('The object is a pin');
    % shows a string in the display for the pin object
    
else
    disp ('The object is not recognized');
    % shows a string in the display for the object that is not recognized

end
