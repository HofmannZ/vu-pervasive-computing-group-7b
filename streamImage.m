clear cam;
cam = webcam(1);
preview(cam);
pause(5);

while (true)
    snap = snapshot(cam);
    pause(1);
    imwrite(snap, fullfile('./streamData', 'stream.bmp'));
    [labelIndex, score] = predict(classifier, imread(fullfile('./streamData', 'stream.bmp')));
    classifier.Labels(labelIndex)
end 

clear cam;