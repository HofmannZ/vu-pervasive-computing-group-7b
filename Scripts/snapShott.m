% The |webcamlist| function provides a cell array of webcams on the current
% system that MATLAB(R) can access.
camList = webcamlist

% Connect to the webcam.
cam = webcam(1)

% To open a Video Preview window, use the |preview| function. The Video 
% Preview window displays the live video stream from the device. 
preview(cam);

% To acquire a single frame, use the |snapshot| function.
img = snapshot(cam);

% Display the frame in a figure window.
image(img);

% A common task is to repeatedly acquire a single image, process it, and
% then store the result. To do this, |snapshot| should be called in a loop. 

for idx = 1:5
    img = snapshot(cam);
    image(img);
end

% Once the connection is no longer needed, clear the associated variable.
clear cam
