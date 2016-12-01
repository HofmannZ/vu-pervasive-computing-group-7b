% The |webcamlist| function provides a cell array of webcams on the current
% system that MATLAB(R) can access.
camList = webcamlist

% Connect to the webcam.
cam = webcam(1)

% To open a Video Preview window, use the |preview| function. The Video 
% Preview window  displays the live video stream from the device. 
preview(cam);

% To acquire a single frame, use the |snapshot| function.
im1 = snapshot(cam);

pause(5); 
% To acquire a single frame, use the |snapshot| function.
im2 = snapshot(cam);

                                                    %get snapshot from the webcam video and store to IM1 variable
imshow(im1)                                      %open up a figure and show the image stored in IM1 variable

                                                                %pause a second before taking the test image snapshot
                                                    %get snapshot of test image and store to variable IM2
imshow(im2)                                        %open up a figure and show the image stored in IM2 variable

im3 = im1 - im2;                                                            %subtract Backround from Image
imshow(im3)                                           %show the subtracted image



im4=rgb2gray(im3);
% convert image to a grayscale image


imshow(im4) 

im5=im2bw(im4, 0.04);
% threshold image (any data type)
imshow(im5) 

im6 = imclose(im5, strel('disk', 4));
% determine and remove the round disks of 6 pixel radius size

imshow(im6) 


clear cam