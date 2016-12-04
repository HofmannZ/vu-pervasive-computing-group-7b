% The |webcamlist| function provides a cell array of webcams on the current
% system that MATLAB(R) can access.
%camList = webcamlist

% Connect to the webcam.
cam = webcam(1)

% To open a Video Preview window, use the |preview| function. The Video 
% Preview window displays the live video stream from the device. 
preview(cam);