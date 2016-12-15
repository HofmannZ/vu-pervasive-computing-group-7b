euroArea=31534;
euroPerimeter=631.274;
euroFF=0.9944;

cardArea=355767;
cardPerimeter=2.383946e+03;
cardFF=0.7866;

pinArea=3322;
pinPerimeter=3.700380e+02;
pinFF=0.3048;


%vid=videoinput('winvideo',1); 
%set(vid,'ReturnedColorSpace','rgb'); 
%start(vid); 
%input=getsnapshot(vid);

im3=rgb2gray(input);
imshow(im3);
im4=im2bw(im3,0.4);
imshow(im4);
im5=imcomplement(im4);
im6=imclose(im5,strel('disk',6));
imshow(im6);
[labels,numlabels]=bwlabel(im6);
disp(numlabels)
vislabels(labels); % display the labeled components

stats = regionprops(labels, 'all');
inputArea = stats(1).Area;
inputPerimeter = stats(1).Perimeter;
inputFF = 4*pi*stats(1).Area/((stats(1).Perimeter)^2);

if (inputFF > 0.9 && inputFF < 1.1 && inputArea > 30000 && inputArea < 33000)
    disp ('The object is a euro');
    
elseif (inputFF > 0.75 && inputFF < 0.85 && inputArea > 350000 && inputArea < 360000)
    disp ('The object is a card');

elseif (inputFF > 0.25 && inputFF < 0.35 && inputArea > 3000 && inputArea < 3500)
    disp ('The object is a pin');

else
    disp ('The object is not recognized');
    
end
