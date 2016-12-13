vid=videoinput('macvideo',1);
% set the input for the video

set(vid,'ReturnedColorSpace','rgb');
% set the colors


start(vid);
% start the video

input=getsnapshot(vid);
% create a snapshot