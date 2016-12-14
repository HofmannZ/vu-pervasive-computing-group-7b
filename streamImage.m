clear cam;
cam = webcam(1);
preview(cam);
pause(5);

while (true)
    snap = snapshot(cam);
    pause(3);
    graysnap=rgb2gray(snap);
    imwrite(graysnap, fullfile('./streamData', 'stream.bmp'));
    imshow(graysnap);
    [labelIndex, score] = predict(classifier, imread(fullfile('./streamData', 'stream.bmp')));
    classifier.Labels(labelIndex)
end 